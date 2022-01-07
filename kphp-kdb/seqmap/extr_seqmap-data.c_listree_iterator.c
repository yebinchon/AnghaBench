
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __index_pos ;
 int do_listree_iterator (int ,int,int const*,int,int*) ;
 int item_tree ;
 int report_index (int,int) ;

int listree_iterator (int left_len, const int *left, int right_len, int *right, int min_index_pos, int max_index_pos) {
  __index_pos = min_index_pos;
  int r = do_listree_iterator (item_tree, left_len, left, right_len, right);
  if (r < 0) { return r; }
  r = report_index (__index_pos, max_index_pos);
  if (r < 0) { return r; }
  return 0;
}
