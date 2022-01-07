
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtd_info {int dummy; } ;
typedef int magic ;


 int EINVAL ;
 int EIO ;
 scalar_t__ SQUASHFS_MAGIC ;
 scalar_t__ le32_to_cpu (int) ;
 int mtd_read (struct mtd_info*,size_t,int,size_t*,unsigned char*) ;

__attribute__((used)) static int tplink_check_rootfs_magic(struct mtd_info *mtd, size_t offset)
{
 u32 magic;
 size_t retlen;
 int ret;

 ret = mtd_read(mtd, offset, sizeof(magic), &retlen,
         (unsigned char *) &magic);
 if (ret)
  return ret;

 if (retlen != sizeof(magic))
  return -EIO;

 if (le32_to_cpu(magic) != SQUASHFS_MAGIC &&
     magic != 0x19852003)
  return -EINVAL;

 return 0;
}
