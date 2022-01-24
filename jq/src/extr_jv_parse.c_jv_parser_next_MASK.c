#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct jv_parser {int eof; char* curr_buf; int bom_strip_position; int flags; scalar_t__ st; scalar_t__ curr_buf_pos; scalar_t__ curr_buf_length; scalar_t__ stacklen; scalar_t__ stackpos; scalar_t__ column; int /*<<< orphan*/  line; int /*<<< orphan*/  last_ch_was_ws; int /*<<< orphan*/  next; int /*<<< orphan*/  path; scalar_t__ curr_buf_is_partial; } ;
typedef  scalar_t__ presult ;
typedef  int /*<<< orphan*/  jv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ JV_KIND_NUMBER ; 
 scalar_t__ JV_PARSER_NORMAL ; 
 scalar_t__ JV_PARSER_WAITING_FOR_RS ; 
 int JV_PARSE_SEQ ; 
 int JV_PARSE_STREAMING ; 
 scalar_t__ OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct jv_parser*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct jv_parser*,char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC11 (struct jv_parser*) ; 
 scalar_t__ FUNC12 (struct jv_parser*,char,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct jv_parser*,int /*<<< orphan*/ *) ; 

jv FUNC14(struct jv_parser* p) {
  if (p->eof)
    return FUNC6();
  if (!p->curr_buf)
    return FUNC6(); // Need a buffer
  if (p->bom_strip_position == 0xff) {
    if (!(p->flags & JV_PARSE_SEQ))
      return FUNC7(FUNC9("Malformed BOM"));
    p->st =JV_PARSER_WAITING_FOR_RS;
    FUNC11(p);
  }
  jv value = FUNC6();
  if ((p->flags & JV_PARSE_STREAMING) && FUNC13(p, &value))
    return value;
  char ch;
  presult msg = 0;
  while (!msg && p->curr_buf_pos < p->curr_buf_length) {
    ch = p->curr_buf[p->curr_buf_pos++];
    if (p->st == JV_PARSER_WAITING_FOR_RS) {
      if (ch == '\n') {
        p->line++;
        p->column = 0;
      } else {
        p->column++;
      }
      if (ch == '\036')
        p->st = JV_PARSER_NORMAL;
      continue; // need to resync, wait for RS
    }
    msg = FUNC12(p, ch, &value);
  }
  if (msg == OK) {
    return value;
  } else if (msg) {
    FUNC4(value);
    if (ch != '\036' && (p->flags & JV_PARSE_SEQ)) {
      // Skip to the next RS
      p->st = JV_PARSER_WAITING_FOR_RS;
      value = FUNC10(p, "%s at line %d, column %d (need RS to resync)", msg, p->line, p->column);
      FUNC11(p);
      return value;
    }
    value = FUNC10(p, "%s at line %d, column %d", msg, p->line, p->column);
    FUNC11(p);
    if (!(p->flags & JV_PARSE_SEQ)) {
      // We're not parsing a JSON text sequence; throw this buffer away.
      // XXX We should fail permanently here.
      p->curr_buf = 0;
      p->curr_buf_pos = 0;
    } // Else ch must be RS; don't clear buf so we can start parsing again after this ch
    return value;
  } else if (p->curr_buf_is_partial) {
    FUNC1(p->curr_buf_pos == p->curr_buf_length);
    // need another buffer
    return FUNC6();
  } else {
    // at EOF
    p->eof = 1;
    FUNC1(p->curr_buf_pos == p->curr_buf_length);
    FUNC4(value);
    if (p->st == JV_PARSER_WAITING_FOR_RS)
      return FUNC10(p, "Unfinished abandoned text at EOF at line %d, column %d", p->line, p->column);
    if (p->st != JV_PARSER_NORMAL) {
      value = FUNC10(p, "Unfinished string at EOF at line %d, column %d", p->line, p->column);
      FUNC11(p);
      p->st = JV_PARSER_WAITING_FOR_RS;
      return value;
    }
    if ((msg = FUNC2(p))) {
      value = FUNC10(p, "%s at EOF at line %d, column %d", msg, p->line, p->column);
      FUNC11(p);
      p->st = JV_PARSER_WAITING_FOR_RS;
      return value;
    }
    if (((p->flags & JV_PARSE_STREAMING) && p->stacklen != 0) ||
        (!(p->flags & JV_PARSE_STREAMING) && p->stackpos != 0)) {
      value = FUNC10(p, "Unfinished JSON term at EOF at line %d, column %d", p->line, p->column);
      FUNC11(p);
      p->st = JV_PARSER_WAITING_FOR_RS;
      return value;
    }
    // p->next is either invalid (nothing here, but no syntax error)
    // or valid (this is the value). either way it's the thing to return
    if ((p->flags & JV_PARSE_STREAMING) && FUNC8(p->next)) {
      value = FUNC0(FUNC3(p->path), p->next); // except in streaming mode we've got to make it [path,value]
    } else {
      value = p->next;
    }
    p->next = FUNC6();
    if ((p->flags & JV_PARSE_SEQ) && !p->last_ch_was_ws && FUNC5(value) == JV_KIND_NUMBER) {
      FUNC4(value);
      return FUNC10(p, "Potentially truncated top-level numeric value at EOF at line %d, column %d", p->line, p->column);
    }
    return value;
  }
}