
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pot_tree_entry_t ;


 int sort_pot_tree_by_hash ;
 int tdelete (int *,void**,int ) ;

void pot_tree_destroy (pot_tree_entry_t *tree)
{
  pot_tree_entry_t *entry = tree;

  while (tree != ((void*)0))
  {
    entry = *(pot_tree_entry_t **) tree;

    tdelete (entry, (void **) &tree, sort_pot_tree_by_hash);
  }
}
