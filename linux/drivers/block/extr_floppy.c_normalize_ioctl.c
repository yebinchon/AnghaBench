
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int EFAULT ;
 int EINVAL ;
 int _IOC_SIZE (unsigned int) ;
 int* ioctl_table ;
 int pr_info (char*) ;

__attribute__((used)) static int normalize_ioctl(unsigned int *cmd, int *size)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ioctl_table); i++) {
  if ((*cmd & 0xffff) == (ioctl_table[i] & 0xffff)) {
   *size = _IOC_SIZE(*cmd);
   *cmd = ioctl_table[i];
   if (*size > _IOC_SIZE(*cmd)) {
    pr_info("ioctl not yet supported\n");
    return -EFAULT;
   }
   return 0;
  }
 }
 return -EINVAL;
}
