
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int word; struct tree* next; } ;
typedef struct tree tree_t ;
struct item {struct tree* words; } ;


 int Root ;
 int tree_delete (int ,int ,struct item*) ;

__attribute__((used)) static void item_clear_wordlist (struct item *I) {
  struct tree *p = I->words;
  while (p) {
    tree_t *w = p->next;
    Root = tree_delete (Root, p->word, I);
    p = w;
  }
  I->words = 0;
}
