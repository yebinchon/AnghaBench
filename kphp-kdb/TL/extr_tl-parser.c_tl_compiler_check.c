
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {char* text; int section; struct tl_expression* next; } ;
struct tl_compiler {struct tl_expression* expr; } ;


 int assert (int) ;
 int fprintf (int ,char*,char*,struct tl_expression*,char*) ;
 int stderr ;

void tl_compiler_check (struct tl_compiler *C, char *msg, struct tl_expression *E) {
  int i;
  fprintf (stderr, "before %s (E: %p, E->text: %s)\n", msg, E, E->text);
  for (i = 0; i < 2; i++) {
    struct tl_expression *L = &C->expr[i], *E;
    for (E = L->next; E != L; E = E->next) {
      assert (E->section == i);
    }
  }
}
