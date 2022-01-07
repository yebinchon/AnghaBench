
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int idx_docs; unsigned long long* Md5_Pos; int * Md5_Docs; } ;
typedef TYPE_1__ volume_t ;
struct TYPE_6__ {unsigned long long offset; struct TYPE_6__* right; int * x; struct TYPE_6__* left; } ;
typedef TYPE_2__ md5_tree_t ;


 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (unsigned char*,int *,int) ;

__attribute__((used)) static void md5_merge_tree_with_index (volume_t *V, unsigned char *new_md5_docs, unsigned long long *new_md5_pos, int *pos_new_idx, int *pos_idx, md5_tree_t *T) {
  if (T->left) {
    md5_merge_tree_with_index (V, new_md5_docs, new_md5_pos, pos_new_idx, pos_idx, T->left);
  }
  while ( (*pos_idx) < V->idx_docs && memcmp (&V->Md5_Docs[(*pos_idx)<<4], &T->x[0], 16) < 0) {
    memcpy (&new_md5_docs[(*pos_new_idx)<<4], &V->Md5_Docs[(*pos_idx)<<4], 16);
    new_md5_pos[(*pos_new_idx)] = V->Md5_Pos[*pos_idx];
    (*pos_new_idx)++;
    (*pos_idx)++;
  }

  memcpy (&new_md5_docs[(*pos_new_idx)<<4], &T->x[0], 16);
  new_md5_pos[(*pos_new_idx)] = T->offset;
  (*pos_new_idx)++;

  if (T->right) {
    md5_merge_tree_with_index (V, new_md5_docs, new_md5_pos, pos_new_idx, pos_idx, T->right);
  }
}
