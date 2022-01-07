
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int cache_pseudo_index_check_mode (int index_mode) {
  return index_mode == 2 || index_mode == 3 || index_mode == 4;
}
