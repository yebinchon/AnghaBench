
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 get_counter_resolution(void)
{
 u32 res;

 __asm__ __volatile__(
  ".set	push\n"
  ".set	mips32r2\n"
  "rdhwr	%0, $3\n"
  ".set pop\n"
  : "=&r" (res)
  :
  : "memory");

 return res;
}
