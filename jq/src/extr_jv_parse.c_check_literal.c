
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {int tokenpos; int* tokenbuf; int dtoa; } ;
typedef char* pfunc ;
typedef int jv ;


 scalar_t__ JV_KIND_INVALID ;
 int TRY (int ) ;
 int jv_false () ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_null () ;
 int jv_number (double) ;
 int jv_number_with_literal (char const*) ;
 int jv_true () ;
 double jvp_strtod (int *,char const*,char**) ;
 int value (struct jv_parser*,int ) ;

__attribute__((used)) static pfunc check_literal(struct jv_parser* p) {
  if (p->tokenpos == 0) return 0;

  const char* pattern = 0;
  int plen;
  jv v;
  switch (p->tokenbuf[0]) {
  case 't': pattern = "true"; plen = 4; v = jv_true(); break;
  case 'f': pattern = "false"; plen = 5; v = jv_false(); break;
  case 'n': pattern = "null"; plen = 4; v = jv_null(); break;
  }
  if (pattern) {
    if (p->tokenpos != plen) return "Invalid literal";
    for (int i=0; i<plen; i++)
      if (p->tokenbuf[i] != pattern[i])
        return "Invalid literal";
    TRY(value(p, v));
  } else {

    p->tokenbuf[p->tokenpos] = 0;







    char *end = 0;
    double d = jvp_strtod(&p->dtoa, p->tokenbuf, &end);
    if (end == 0 || *end != 0) {
      return "Invalid numeric literal";
    }
    TRY(value(p, jv_number(d)));

  }
  p->tokenpos = 0;
  return 0;
}
