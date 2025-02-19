
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int ENODEV ;

 int iminor (struct inode*) ;
 int ipmi_start_timer_on_heartbeat ;
 int ipmi_wdog_open ;
 int stream_open (struct inode*,struct file*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int ipmi_open(struct inode *ino, struct file *filep)
{
 switch (iminor(ino)) {
 case 128:
  if (test_and_set_bit(0, &ipmi_wdog_open))
   return -EBUSY;






  ipmi_start_timer_on_heartbeat = 1;
  return stream_open(ino, filep);

 default:
  return (-ENODEV);
 }
}
