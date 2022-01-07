
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long BUFFSIZE ;
 int assert (int) ;
 int idx_load_next (int) ;
 int idx_rptr ;
 int writeout (int,int) ;

void idx_copy_part (long len) {
  while (len > 0) {
    int to_load = len < BUFFSIZE ? len : BUFFSIZE;
    int bytes = idx_load_next (to_load);
    assert (bytes > 0);
    if (bytes > to_load) {
      assert (bytes <= to_load + 4);
      bytes = to_load;
    }
    writeout (idx_rptr, bytes);
    idx_rptr += bytes;
    len -= bytes;
  }
  assert (!len);
}
