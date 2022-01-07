
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {struct tl_expression* rnext; } ;
struct tl_compiler {int dummy; } ;


 int tl_expression_dfs_visit (struct tl_compiler*,struct tl_expression*) ;
 struct tl_expression* tl_expression_find_first_by_composite_typename (struct tl_compiler*,char*) ;

__attribute__((used)) static void dfs_typename_visit (struct tl_compiler *C, char *typename) {
  if (typename == ((void*)0)) {
    return;
  }
  struct tl_expression *E = tl_expression_find_first_by_composite_typename (C, typename);
  while (E != ((void*)0)) {
    tl_expression_dfs_visit (C, E);
    E = E->rnext;
  }
}
