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
struct jv_parser {scalar_t__ st; int last_ch_was_ws; scalar_t__ column; int /*<<< orphan*/  line; } ;
typedef  char* presult ;
typedef  char* pfunc ;
typedef  int /*<<< orphan*/  jv ;
typedef  int chclass ;

/* Variables and functions */
#define  INVALID 132 
 scalar_t__ JV_PARSER_NORMAL ; 
 scalar_t__ JV_PARSER_STRING ; 
 scalar_t__ JV_PARSER_STRING_ESCAPE ; 
#define  LITERAL 131 
 char* OK ; 
#define  QUOTE 130 
#define  STRUCTURE 129 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
#define  WHITESPACE 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct jv_parser*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct jv_parser*) ; 
 scalar_t__ FUNC4 (struct jv_parser*) ; 
 int FUNC5 (char) ; 
 scalar_t__ FUNC6 (struct jv_parser*) ; 
 scalar_t__ FUNC7 (struct jv_parser*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct jv_parser*) ; 
 scalar_t__ FUNC12 (struct jv_parser*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct jv_parser*,char) ; 

__attribute__((used)) static pfunc FUNC14(struct jv_parser* p, char ch, jv* out) {
  p->column++;
  if (ch == '\n') {
    p->line++;
    p->column = 0;
  }
  if (ch == '\036' /* ASCII RS; see draft-ietf-json-sequence-07 */) {
    if (FUNC4(p)) {
      if (FUNC3(p) == 0 && FUNC7(p))
        return "Potentially truncated top-level numeric value";
      return "Truncated value";
    }
    FUNC0(FUNC3(p));
    if (p->st == JV_PARSER_NORMAL && FUNC2(p, out))
      return OK;
    // shouldn't happen?
    FUNC1(!FUNC10(*out));
    FUNC11(p);
    FUNC8(*out);
    *out = FUNC9();
    return OK;
  }
  presult answer = 0;
  p->last_ch_was_ws = 0;
  if (p->st == JV_PARSER_NORMAL) {
    chclass cls = FUNC5(ch);
    if (cls == WHITESPACE)
      p->last_ch_was_ws = 1;
    if (cls != LITERAL) {
      FUNC0(FUNC3(p));
      if (FUNC2(p, out)) answer = OK;
    }
    switch (cls) {
    case LITERAL:
      FUNC13(p, ch);
      break;
    case WHITESPACE:
      break;
    case QUOTE:
      p->st = JV_PARSER_STRING;
      break;
    case STRUCTURE:
      FUNC0(FUNC12(p, ch));
      break;
    case INVALID:
      return "Invalid character";
    }
    if (FUNC2(p, out)) answer = OK;
  } else {
    if (ch == '"' && p->st == JV_PARSER_STRING) {
      FUNC0(FUNC6(p));
      p->st = JV_PARSER_NORMAL;
      if (FUNC2(p, out)) answer = OK;
    } else {
      FUNC13(p, ch);
      if (ch == '\\' && p->st == JV_PARSER_STRING) {
        p->st = JV_PARSER_STRING_ESCAPE;
      } else {
        p->st = JV_PARSER_STRING;
      }
    }
  }
  return answer;
}