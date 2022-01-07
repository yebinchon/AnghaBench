
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int md5_hash_t ;


 long long HASH_FILE_BYTES ;
 int assert (int) ;
 int md5 (unsigned char*,long long,int ) ;
 int memcpy (int ,int ,int) ;
 long long pread (int,scalar_t__,long long,long long) ;
 scalar_t__ stats_buff ;

int compute_start_end_hashes (int fd, long long file_size, md5_hash_t start_hash, md5_hash_t end_hash) {
  assert (fd > 0 && file_size >= 0);
  if (file_size <= HASH_FILE_BYTES) {
    assert (pread (fd, stats_buff, file_size, 0) == file_size);
    md5 ((unsigned char *) stats_buff, file_size, start_hash);
    memcpy (end_hash, start_hash, sizeof (md5_hash_t));
  } else {
    assert (pread (fd, stats_buff, HASH_FILE_BYTES, 0) == HASH_FILE_BYTES);
    md5 ((unsigned char *) stats_buff, HASH_FILE_BYTES, start_hash);
    assert (pread (fd, stats_buff, HASH_FILE_BYTES, file_size - HASH_FILE_BYTES) == HASH_FILE_BYTES);
    md5 ((unsigned char *) stats_buff, HASH_FILE_BYTES, end_hash);
  }
  return 0;
}
