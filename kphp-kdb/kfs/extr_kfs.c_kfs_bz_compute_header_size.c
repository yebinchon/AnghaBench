
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kfs_binlog_zip_header_t ;


 int kfs_bz_get_chunks_no (long long) ;

int kfs_bz_compute_header_size (long long orig_file_size) {
  int chunks = kfs_bz_get_chunks_no (orig_file_size);
  return sizeof (kfs_binlog_zip_header_t) + 8 * chunks + 4;
}
