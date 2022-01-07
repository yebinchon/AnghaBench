
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int fasync_helper (int,struct file*,int,int *) ;
 int fasync_q ;

__attribute__((used)) static int ipmi_fasync(int fd, struct file *file, int on)
{
 int result;

 result = fasync_helper(fd, file, on, &fasync_q);

 return (result);
}
