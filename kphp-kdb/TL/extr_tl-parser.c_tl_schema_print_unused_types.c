
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {int flag_builtin; scalar_t__ flag_visited; struct tl_expression* next; } ;
struct tl_compiler {struct tl_expression* expr; } ;
typedef int FILE ;


 size_t TL_SECTION_FUNCTIONS ;
 size_t TL_SECTION_TYPES ;
 int tl_expression_dfs_visit (struct tl_compiler*,struct tl_expression*) ;
 int tl_expression_write_to_file (int *,struct tl_compiler*,struct tl_expression*) ;

int tl_schema_print_unused_types (struct tl_compiler *C, FILE *f) {
  struct tl_expression *L = &C->expr[TL_SECTION_FUNCTIONS], *E;
  for (E = L->next; E != L; E = E->next) {
    tl_expression_dfs_visit (C, E);
  }
  for (E = L->next; E != L; E = E->next) {
    E->flag_visited = 0;
  }
  L = &C->expr[TL_SECTION_TYPES];
  for (E = L->next; E != L; E = E->next) {
    if (!E->flag_visited && !E->flag_builtin) {
      tl_expression_write_to_file (f, C, E);
    }
  }
  return 0;
}
