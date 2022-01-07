
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kfs_snapshot_write_stream_t ;


 int assert (int) ;
 int kfs_sws_crypt (int *,void*,long long) ;
 int kfs_sws_write (int *,void*,long long) ;

void kfs_sws_safe_write (kfs_snapshot_write_stream_t *S, const void *buff, long long count) {
  assert (count >= 0);
  if (!count) {
    return;
  }
  kfs_sws_write (S, (void *) buff, count);
  kfs_sws_crypt (S, (void *) buff, count);
}
