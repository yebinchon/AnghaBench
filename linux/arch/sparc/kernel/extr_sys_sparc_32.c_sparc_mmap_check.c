
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long PAGE_SIZE ;
 unsigned long TASK_SIZE ;

int sparc_mmap_check(unsigned long addr, unsigned long len)
{

 if (len > TASK_SIZE - PAGE_SIZE || addr + len > TASK_SIZE - PAGE_SIZE)
  return -EINVAL;

 return 0;
}
