
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RBuff ;
 int SEEK_SET ;
 int assert (int) ;
 long long idx_bytes ;
 int idx_fd ;
 scalar_t__ idx_metafile_pos ;
 int idx_ptr_crc ;
 long long idx_read_pos ;
 int idx_rptr ;
 int idx_wptr ;
 long long lseek (int ,long long,int ) ;
 int read_crc32_acc ;

void idx_set_readpos (long long pos) {
  assert (pos <= idx_bytes && pos >= 0);
  assert (lseek (idx_fd, pos, SEEK_SET) == pos);
  idx_read_pos = pos;
  idx_metafile_pos = 0;
  read_crc32_acc = -1;
  idx_rptr = idx_wptr = idx_ptr_crc = RBuff;
}
