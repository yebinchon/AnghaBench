
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {struct item* right; int min_index_pos; int key; int key_len; struct item* left; } ;


 int NODE_TYPE_MINUS ;
 int NODE_TYPE_PLUS ;
 scalar_t__ NODE_TYPE_S (struct item*) ;
 scalar_t__ NODE_TYPE_SURE ;
 int NODE_TYPE_T (struct item*) ;
 scalar_t__ NODE_TYPE_UNSURE ;
 int NODE_TYPE_ZERO ;
 int __index_pos ;
 int __tree_report (struct item*) ;
 int assert (int) ;
 int index_load_metafile (int ,int ) ;
 int key_cmp (int ,int ,int,int const*) ;
 int report_index (int ,int ) ;

int do_listree_iterator (struct item *T, int left_len, const int *left, int right_len, int *right) {
  if (!T) { return 0; }
  int c = key_cmp (T->key_len, T->key, left_len, left);
  if (c < 0) {
    return do_listree_iterator (T->right, left_len, left, right_len, right);
  } else {
    int r = do_listree_iterator (T->left, left_len, left, right_len, right);
    if (r < 0) { return r; }
    c = key_cmp (T->key_len, T->key, right_len, right);
    if (c > 0) { return 0; }
    int x = NODE_TYPE_T (T);
    if (NODE_TYPE_S (T) == NODE_TYPE_UNSURE) {
      if (index_load_metafile (T->key_len, T->key) == -2) {
        return -2;
      }
    }
    assert (NODE_TYPE_S (T) == NODE_TYPE_SURE);
    r = report_index (__index_pos, T->min_index_pos);
    if (r < 0) { return r; }
    __index_pos = T->min_index_pos;
    if (x == NODE_TYPE_PLUS) {
      int z = __tree_report (T);
      if (z < 0) { return z; }
    } else if (x == NODE_TYPE_ZERO) {
      int z = __tree_report (T);
      if (z < 0) { return z; }
      __index_pos ++;
    } else {
      assert (x == NODE_TYPE_MINUS);
      __index_pos ++;
    }
    return do_listree_iterator (T->right, left_len, left, right_len, right);
  }
}
