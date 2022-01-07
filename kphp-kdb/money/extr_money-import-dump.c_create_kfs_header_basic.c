
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfs_file_header {int finished; int kfs_version; int magic; } ;


 int KFS_MAGIC ;
 int KFS_V01 ;
 int memset (struct kfs_file_header*,int ,int) ;

void create_kfs_header_basic (struct kfs_file_header *H) {
  memset (H, 0, 4096);
  H->magic = KFS_MAGIC;
  H->kfs_version = KFS_V01;
  H->finished = -1;
}
