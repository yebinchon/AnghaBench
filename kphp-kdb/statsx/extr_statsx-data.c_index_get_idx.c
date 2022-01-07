
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long* index_cnt ;
 scalar_t__* index_deleted ;
 int index_size ;

int index_get_idx (long long count_id) {
  int l = -1;
  int r = index_size;
  while (r - l > 1) {
    int x = (r + l)>>1;
    if (index_cnt[x] < count_id) {
      l = x;
    } else {
      r = x;
    }
  }
  l++;
  if (l == index_size || index_cnt[l] != count_id || index_deleted[l]) {
    return index_size;
  } else {
    return l;
  }
}
