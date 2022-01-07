
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int get_subtree_array_size (int u, int v, int left_subtree_size_threshold) {
  if (v - u < left_subtree_size_threshold) {
    return 0;
  }
  int m = (u + v) >> 1;
  return 1 + get_subtree_array_size (u, m, left_subtree_size_threshold) + get_subtree_array_size (m, v, left_subtree_size_threshold);
}
