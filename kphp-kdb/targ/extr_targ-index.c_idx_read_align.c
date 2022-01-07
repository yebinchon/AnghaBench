
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int idx_cur_read_pos () ;
 int idx_load_next (int) ;
 int idx_rptr ;

void idx_read_align (int alignment) {
  int to_skip = -idx_cur_read_pos() & (alignment - 1);
  if (to_skip > 0) {
    assert (idx_load_next (to_skip) >= to_skip);
    idx_rptr += to_skip;
  }
}
