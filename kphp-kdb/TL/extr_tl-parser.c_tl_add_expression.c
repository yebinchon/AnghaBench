
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {int section; struct tl_expression* prev; struct tl_expression* next; int text; int flag_builtin; } ;
struct tl_compiler {struct tl_expression* expr; int flag_reading_builtin_schema; } ;


 int assert (int) ;
 int cstr_dup (char const*) ;
 int vkprintf (int,char*,int,char const*) ;
 struct tl_expression* zmalloc0 (int) ;

__attribute__((used)) static void tl_add_expression (struct tl_compiler *C, int section, const char *text) {
  vkprintf (3, "tl_add_expression (section:%d, text:%s)\n", section, text);
  assert (section >= 0 && section < 2);
  struct tl_expression *E = zmalloc0 (sizeof (struct tl_expression));
  E->section = section;
  E->flag_builtin = C->flag_reading_builtin_schema;
  struct tl_expression *L = &C->expr[section];
  E->text = cstr_dup (text);
  struct tl_expression *A = L->prev;
  A->next = E; E->prev = A;
  E->next = L; L->prev = E;
}
