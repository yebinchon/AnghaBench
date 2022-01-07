
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int name; } ;


 int EIO ;
 int mtd_read (struct mtd_info*,size_t,size_t,size_t*,int *) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int
read_jimage_header(struct mtd_info *mtd, size_t offset, u_char *buf,
     size_t header_len)
{
 size_t retlen;
 int ret;

 ret = mtd_read(mtd, offset, header_len, &retlen, buf);
 if (ret) {
  pr_debug("read error in \"%s\"\n", mtd->name);
  return ret;
 }

 if (retlen != header_len) {
  pr_debug("short read in \"%s\"\n", mtd->name);
  return -EIO;
 }

 return 0;
}
