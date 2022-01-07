
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int block_offset; int block_length; struct TYPE_3__* right; struct TYPE_3__* left; } ;
typedef TYPE_1__ filesys_tree_t ;


 int fprintf (int ,char*,int,int,int) ;
 int stderr ;

__attribute__((used)) static void rec_dump_tree (filesys_tree_t *T, int depth) {
  if (T != ((void*)0)) {
    fprintf (stderr, "[%d] [%u, %u)\n", depth, T->block_offset, T->block_offset + T->block_length);
    rec_dump_tree (T->left, depth + 1);
    rec_dump_tree (T->right, depth + 1);
  }
}
