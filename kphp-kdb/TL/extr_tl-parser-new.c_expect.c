
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ptr; scalar_t__ type; scalar_t__ len; } ;
struct TYPE_4__ {TYPE_1__ lex; } ;


 scalar_t__ lex_error ;
 scalar_t__ lex_none ;
 scalar_t__ memcmp (char*,void*,scalar_t__) ;
 TYPE_2__ parse ;
 int parse_error (char*) ;
 int parse_lex () ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

int expect (char *s) {
  if (!parse.lex.ptr || parse.lex.ptr == (void *)-1 || parse.lex.type == lex_error || parse.lex.type == lex_none || parse.lex.len != strlen (s) || memcmp (s, parse.lex.ptr, parse.lex.len)) {
    static char buf[1000];
    sprintf (buf, "Expected %s", s);
    parse_error (buf);
    return -1;
  } else {
    parse_lex ();
  }
  return 1;
}
