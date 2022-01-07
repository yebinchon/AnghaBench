
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfs_file_header {scalar_t__ magic; scalar_t__ header_crc32; scalar_t__ kfs_version; } ;


 scalar_t__ KFS_MAGIC ;
 scalar_t__ KFS_V01 ;
 int assert (int) ;
 scalar_t__ compute_crc32 (struct kfs_file_header*,int) ;

__attribute__((used)) static int check_kfs_header_basic (struct kfs_file_header *H) {
  assert (H->magic == KFS_MAGIC);
  if (compute_crc32 (H, 4092) != H->header_crc32) {
    return -1;
  }
  if (H->kfs_version != KFS_V01) {
    return -1;
  }
  return 0;
}
