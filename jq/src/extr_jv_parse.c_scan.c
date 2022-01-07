
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {scalar_t__ st; int last_ch_was_ws; scalar_t__ column; int line; } ;
typedef char* presult ;
typedef char* pfunc ;
typedef int jv ;
typedef int chclass ;



 scalar_t__ JV_PARSER_NORMAL ;
 scalar_t__ JV_PARSER_STRING ;
 scalar_t__ JV_PARSER_STRING_ESCAPE ;

 char* OK ;


 int TRY (scalar_t__) ;

 int assert (int) ;
 scalar_t__ check_done (struct jv_parser*,int *) ;
 scalar_t__ check_literal (struct jv_parser*) ;
 scalar_t__ check_truncation (struct jv_parser*) ;
 int classify (char) ;
 scalar_t__ found_string (struct jv_parser*) ;
 scalar_t__ is_top_num (struct jv_parser*) ;
 int jv_free (int ) ;
 int jv_invalid () ;
 int jv_is_valid (int ) ;
 int parser_reset (struct jv_parser*) ;
 scalar_t__ token (struct jv_parser*,char) ;
 int tokenadd (struct jv_parser*,char) ;

__attribute__((used)) static pfunc scan(struct jv_parser* p, char ch, jv* out) {
  p->column++;
  if (ch == '\n') {
    p->line++;
    p->column = 0;
  }
  if (ch == '\036' ) {
    if (check_truncation(p)) {
      if (check_literal(p) == 0 && is_top_num(p))
        return "Potentially truncated top-level numeric value";
      return "Truncated value";
    }
    TRY(check_literal(p));
    if (p->st == JV_PARSER_NORMAL && check_done(p, out))
      return OK;

    assert(!jv_is_valid(*out));
    parser_reset(p);
    jv_free(*out);
    *out = jv_invalid();
    return OK;
  }
  presult answer = 0;
  p->last_ch_was_ws = 0;
  if (p->st == JV_PARSER_NORMAL) {
    chclass cls = classify(ch);
    if (cls == 128)
      p->last_ch_was_ws = 1;
    if (cls != 131) {
      TRY(check_literal(p));
      if (check_done(p, out)) answer = OK;
    }
    switch (cls) {
    case 131:
      tokenadd(p, ch);
      break;
    case 128:
      break;
    case 130:
      p->st = JV_PARSER_STRING;
      break;
    case 129:
      TRY(token(p, ch));
      break;
    case 132:
      return "Invalid character";
    }
    if (check_done(p, out)) answer = OK;
  } else {
    if (ch == '"' && p->st == JV_PARSER_STRING) {
      TRY(found_string(p));
      p->st = JV_PARSER_NORMAL;
      if (check_done(p, out)) answer = OK;
    } else {
      tokenadd(p, ch);
      if (ch == '\\' && p->st == JV_PARSER_STRING) {
        p->st = JV_PARSER_STRING_ESCAPE;
      } else {
        p->st = JV_PARSER_STRING;
      }
    }
  }
  return answer;
}
