
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfs_file_header {int header_crc32; } ;


 int compute_crc32 (struct kfs_file_header*,int) ;

void fix_kfs_header_crc32 (struct kfs_file_header *H) {
  H->header_crc32 = compute_crc32 (H, 4092);
}
