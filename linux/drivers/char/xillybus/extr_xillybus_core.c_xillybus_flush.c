
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_mode; int private_data; } ;
typedef int fl_owner_t ;


 int FMODE_WRITE ;
 int HZ ;
 int xillybus_myflush (int ,int ) ;

__attribute__((used)) static int xillybus_flush(struct file *filp, fl_owner_t id)
{
 if (!(filp->f_mode & FMODE_WRITE))
  return 0;

 return xillybus_myflush(filp->private_data, HZ);
}
