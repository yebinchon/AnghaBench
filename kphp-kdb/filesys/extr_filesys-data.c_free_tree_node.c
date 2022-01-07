
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; scalar_t__ block_length; } ;
typedef TYPE_1__ filesys_tree_t ;


 int alloc_tree_nodes ;
 int free (scalar_t__) ;
 int free_tree_nodes ;
 int tot_allocated_data ;
 int zfree (TYPE_1__*,int) ;

__attribute__((used)) static void free_tree_node (filesys_tree_t *T) {
  alloc_tree_nodes--;
  if (T->data) {
    tot_allocated_data -= T->block_length;
    free (T->data);
  }
  zfree (T, sizeof (*T));
  free_tree_nodes++;
}
