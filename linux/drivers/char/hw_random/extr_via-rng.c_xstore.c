
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline u32 xstore(u32 *addr, u32 edx_in)
{
 u32 eax_out;

 asm(".byte 0x0F,0xA7,0xC0 /* xstore %%edi (addr=%0) */"
  : "=m" (*addr), "=a" (eax_out), "+d" (edx_in), "+D" (addr));

 return eax_out;
}
