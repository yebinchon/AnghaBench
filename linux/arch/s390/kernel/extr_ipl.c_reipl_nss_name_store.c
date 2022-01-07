
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {int vm_flags; int nss_name; } ;
struct TYPE_4__ {TYPE_1__ ccw; } ;


 int ASCEBC (int ,int) ;
 int EBC_TOUPPER (int ,int) ;
 size_t EINVAL ;
 int IPL_PB0_CCW_VM_FLAG_NSS ;
 int NSS_NAME_SIZE ;
 int memcpy (int ,char const*,int) ;
 int memset (int ,int,int) ;
 TYPE_2__* reipl_block_nss ;

__attribute__((used)) static ssize_t reipl_nss_name_store(struct kobject *kobj,
        struct kobj_attribute *attr,
        const char *buf, size_t len)
{
 int nss_len;


 nss_len = len;
 if ((len > 0) && (buf[len - 1] == '\n'))
  nss_len--;

 if (nss_len > NSS_NAME_SIZE)
  return -EINVAL;

 memset(reipl_block_nss->ccw.nss_name, 0x40, NSS_NAME_SIZE);
 if (nss_len > 0) {
  reipl_block_nss->ccw.vm_flags |= IPL_PB0_CCW_VM_FLAG_NSS;
  memcpy(reipl_block_nss->ccw.nss_name, buf, nss_len);
  ASCEBC(reipl_block_nss->ccw.nss_name, nss_len);
  EBC_TOUPPER(reipl_block_nss->ccw.nss_name, nss_len);
 } else {
  reipl_block_nss->ccw.vm_flags &= ~IPL_PB0_CCW_VM_FLAG_NSS;
 }

 return len;
}
