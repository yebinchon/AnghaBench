
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int ) ;
 int fprintf (int ,char*,char*,int ) ;
 int idx_cur_read_pos () ;
 char* idx_filename ;
 unsigned int idx_relax_crc32 () ;
 scalar_t__ readin_int () ;
 int stderr ;

__attribute__((used)) static inline void idx_check_crc (void) {
  unsigned crc32 = idx_relax_crc32 ();
  if ((unsigned) readin_int() != crc32) {
    fprintf (stderr, "crc32 mismatch while reading snapshot %s at position %lld\n", idx_filename, idx_cur_read_pos ());
    assert (0);
  }
}
