
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int CAP_SYS_RAWIO ;
 int EPERM ;
 int LOCKDOWN_DEV_MEM ;
 int capable (int ) ;
 int security_locked_down (int ) ;

__attribute__((used)) static int open_port(struct inode *inode, struct file *filp)
{
 if (!capable(CAP_SYS_RAWIO))
  return -EPERM;

 return security_locked_down(LOCKDOWN_DEV_MEM);
}
