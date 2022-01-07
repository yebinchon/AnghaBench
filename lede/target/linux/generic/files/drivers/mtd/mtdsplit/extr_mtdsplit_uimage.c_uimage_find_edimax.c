
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u32 ;
struct uimage_header {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOSPC ;
 int FW_EDIMAX_OFFSET ;
 scalar_t__ FW_MAGIC_EDIMAX ;
 scalar_t__ be32_to_cpu (int ) ;
 int pr_err (char*) ;
 int uimage_verify_default (int *,size_t) ;

__attribute__((used)) static ssize_t uimage_find_edimax(u_char *buf, size_t len)
{
 u32 *magic;

 if (len < FW_EDIMAX_OFFSET + sizeof(struct uimage_header)) {
  pr_err("Buffer too small for checking Edimax header\n");
  return -ENOSPC;
 }

 magic = (u32 *)buf;
 if (be32_to_cpu(*magic) != FW_MAGIC_EDIMAX)
  return -EINVAL;

 if (!uimage_verify_default(buf + FW_EDIMAX_OFFSET, len))
  return FW_EDIMAX_OFFSET;

 return -EINVAL;
}
