
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FLAG_REVERSE_SEARCH ;
 int find_range_idx (int) ;
 int get_sorting_mode (int) ;

__attribute__((used)) static int get_range_idx_with_add (int ch) {
  int sm = get_sorting_mode (ch);
  if (sm < 0) {
    return -1;
  }
  if (! (sm & FLAG_REVERSE_SEARCH)) {

    return -1;
  }
  sm &= ~FLAG_REVERSE_SEARCH;
  return find_range_idx (sm);
}
