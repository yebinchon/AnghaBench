
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {int dtoa; int tokenbuf; int stack; int output; int path; } ;


 int jv_free (int ) ;
 int jv_mem_free (int ) ;
 int jvp_dtoa_context_free (int *) ;
 int parser_reset (struct jv_parser*) ;

__attribute__((used)) static void parser_free(struct jv_parser* p) {
  parser_reset(p);
  jv_free(p->path);
  jv_free(p->output);
  jv_mem_free(p->stack);
  jv_mem_free(p->tokenbuf);
  jvp_dtoa_context_free(&p->dtoa);
}
