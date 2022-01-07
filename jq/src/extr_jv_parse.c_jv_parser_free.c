
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {int dummy; } ;


 int jv_mem_free (struct jv_parser*) ;
 int parser_free (struct jv_parser*) ;

void jv_parser_free(struct jv_parser* p) {
  parser_free(p);
  jv_mem_free(p);
}
