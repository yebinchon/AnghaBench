
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct bt_bmc {int dummy; } ;



 long EINVAL ;
 struct bt_bmc* file_bt_bmc (struct file*) ;
 int set_sms_atn (struct bt_bmc*) ;

__attribute__((used)) static long bt_bmc_ioctl(struct file *file, unsigned int cmd,
    unsigned long param)
{
 struct bt_bmc *bt_bmc = file_bt_bmc(file);

 switch (cmd) {
 case 128:
  set_sms_atn(bt_bmc);
  return 0;
 }
 return -EINVAL;
}
