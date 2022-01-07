
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {struct tl_expression* next; } ;
struct tl_compiler {int flag_output_magic; } ;
typedef int FILE ;


 int tl_expression_write_to_file (int *,struct tl_compiler*,struct tl_expression*) ;

void tl_write_list_expressions_free_to_file (FILE *f, struct tl_compiler *C, struct tl_expression *L) {
  struct tl_expression *E;
  int old_output_magic = C->flag_output_magic;
  C->flag_output_magic = 1;
  for (E = L->next; E != L; E = E->next) {
    tl_expression_write_to_file (f, C, E);
  }
  C->flag_output_magic = old_output_magic;
}
