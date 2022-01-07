
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash_entry_t ;


 int tree ;
 int tree_dump_pointers (int ,int **,int,int) ;

int dump_pointers (hash_entry_t **x, int p, int maxp) {
  return tree_dump_pointers (tree, x, p, maxp);
}
