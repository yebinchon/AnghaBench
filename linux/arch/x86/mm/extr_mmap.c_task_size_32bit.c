
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IA32_PAGE_OFFSET ;

unsigned long task_size_32bit(void)
{
 return IA32_PAGE_OFFSET;
}
