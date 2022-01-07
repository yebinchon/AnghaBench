
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vm_parm_len; int vm_flags; int vm_parm; } ;
struct ipl_parameter_block {TYPE_1__ ccw; } ;
typedef size_t ssize_t ;


 int ASCEBC (int ,int) ;
 int DIAG308_VMPARM_SIZE ;
 size_t EINVAL ;
 int IPL_PB0_CCW_VM_FLAG_VP ;
 scalar_t__ isalnum (char const) ;
 scalar_t__ isascii (char const) ;
 scalar_t__ isprint (char const) ;
 int memcpy (int ,char const*,int) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static ssize_t reipl_generic_vmparm_store(struct ipl_parameter_block *ipb,
       size_t vmparm_max,
       const char *buf, size_t len)
{
 int i, ip_len;


 ip_len = len;
 if ((len > 0) && (buf[len - 1] == '\n'))
  ip_len--;

 if (ip_len > vmparm_max)
  return -EINVAL;


 for (i = 0; i < ip_len; i++)
  if (!(isalnum(buf[i]) || isascii(buf[i]) || isprint(buf[i])))
   return -EINVAL;

 memset(ipb->ccw.vm_parm, 0, DIAG308_VMPARM_SIZE);
 ipb->ccw.vm_parm_len = ip_len;
 if (ip_len > 0) {
  ipb->ccw.vm_flags |= IPL_PB0_CCW_VM_FLAG_VP;
  memcpy(ipb->ccw.vm_parm, buf, ip_len);
  ASCEBC(ipb->ccw.vm_parm, ip_len);
 } else {
  ipb->ccw.vm_flags &= ~IPL_PB0_CCW_VM_FLAG_VP;
 }

 return len;
}
