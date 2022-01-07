
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {size_t pos; size_t len; int * text; } ;


 int curch ;
 struct parse parse ;

void load_parse (struct parse _parse) {
  parse = _parse;
  curch = parse.pos > parse.len ? 0: parse.text[parse.pos] ;
}
