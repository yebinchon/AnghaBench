
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_expression {char* text; scalar_t__ type; size_t section; struct tl_expression* rnext; struct tl_expression* rtail; int * right_name; int flag_expanded; struct tl_expression* prev; struct tl_expression* next; } ;
struct tl_compiler {int hm_composite_typename; int * hm_combinator; int * hm_magic; } ;


 size_t TL_SECTION_TYPES ;
 int cstr_free (char**) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int strcmp (char*,char*) ;
 scalar_t__ tl_expression_compute_magic (struct tl_compiler*,struct tl_expression*) ;
 int tl_expression_free (struct tl_expression*) ;
 char* tl_expression_join (struct tl_compiler*,struct tl_expression*,int ) ;
 scalar_t__ tl_expression_parse (struct tl_compiler*,struct tl_expression*) ;
 int tl_failf (struct tl_compiler*,char*,char*,char*) ;
 struct tl_expression* tl_hashmap_get_f (int *,struct tl_expression*,int) ;
 scalar_t__ tlet_simple ;
 int verbosity ;

int tl_list_expressions_parse (struct tl_compiler *C, struct tl_expression *L) {
  struct tl_expression *E, *W;
  for (E = L->next; E != L; E = W) {
    W = E->next;
    if (tl_expression_parse (C, E) < 0) {
      return -1;
    }
    char *t = tl_expression_join (C, E, 0);
    if (t == ((void*)0)) {
      return -1;
    }
    cstr_free (&E->text);
    E->text = t;
    if (tl_expression_compute_magic (C, E) < 0) {
      return -1;
    }
    if (E->type == tlet_simple) {
      struct tl_expression *A = tl_hashmap_get_f (&C->hm_magic[E->section], E, 1);
      if (A != E) {
        if (!strcmp (A->text, E->text)) {
          if (verbosity >= 1) {
            fprintf (stderr, "duplicate expression: %s\n", E->text);
          }
          struct tl_expression *u = E->prev, *v = E->next;
          u->next = v; v->prev = u;
          tl_expression_free (E);
          continue;
        } else {
          return tl_failf (C, "magic collision for expressions %s and %s", A->text, E->text);
        }
      }

      if (!(E->flag_expanded)) {
        A = tl_hashmap_get_f (&C->hm_combinator[E->section], E, 1);
        if (A != E) {
          return tl_failf (C, "combinator collision for expressions %s and %s", A->text, E->text);
        }
      }

      if (E->type == tlet_simple && E->right_name != ((void*)0) && E->section == TL_SECTION_TYPES) {
        struct tl_expression *A = tl_hashmap_get_f (&C->hm_composite_typename, E, 1);
        if (A == E) {
          E->rtail = E;
        } else {
          A->rtail->rnext = E;
          A->rtail = E;
        }
        E->rnext = ((void*)0);
      }
    }
  }
  return 0;
}
