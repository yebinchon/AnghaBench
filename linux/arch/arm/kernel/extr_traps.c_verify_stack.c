
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 unsigned long PAGE_OFFSET ;
 int * high_memory ;

__attribute__((used)) static int verify_stack(unsigned long sp)
{
 if (sp < PAGE_OFFSET ||
     (sp > (unsigned long)high_memory && high_memory != ((void*)0)))
  return -EFAULT;

 return 0;
}
