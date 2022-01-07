
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long mul_32_32(const unsigned long arg1,
          const unsigned long arg2)
{
 int retval;
 asm volatile ("mull %2; movl %%edx,%%eax":"=a" (retval)
        :"0"(arg1), "g"(arg2)
        :"dx");
 return retval;
}
