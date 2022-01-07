
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int write_buff_off; int size; int off; } ;
typedef TYPE_1__ unpack_interval_t ;


 int KFS_BINLOG_ZIP_CHUNK_SIZE ;
 int assert (int) ;

__attribute__((used)) static int unpack_get_last_n_bytes (unsigned long long orig_file_size, int m, int chunk_no, int chunks, int n, unpack_interval_t *R) {
  unsigned u = orig_file_size;
  u &= (KFS_BINLOG_ZIP_CHUNK_SIZE - 1);
  if (u >= n) {
    if (chunk_no == chunks - 1) {
      R->write_buff_off = m - n;
      R->size = n;
      R->off = 0;
      return 0;
    }
    return -1;
  } else {
    if (chunk_no == chunks - 1) {
      R->write_buff_off = 0;
      R->size = u;
      R->off = n - u;
      return 0;
    } else {
      assert (chunk_no == chunks - 2);
      u = n - u;
      R->write_buff_off = m - u;
      R->size = u;
      R->off = 0;
      return 0;
    }
  }
}
