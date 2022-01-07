
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int word; struct tree* next; } ;
typedef struct tree tree_t ;
typedef int item_t ;


 int Root ;
 int tree_delete (int ,int ,int *) ;

__attribute__((used)) static void item_clear_wordlist (item_t *I, tree_t **p_I_words) {
  if (p_I_words == ((void*)0)) {
    return;
  }
  struct tree *p = *p_I_words;
  while (p) {
    tree_t *w = p->next;
    Root = tree_delete (Root, p->word, I);
    p = w;
  }
  *p_I_words = ((void*)0);
}
