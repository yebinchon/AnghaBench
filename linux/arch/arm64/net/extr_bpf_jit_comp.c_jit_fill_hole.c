
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int AARCH64_BREAK_FAULT ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static void jit_fill_hole(void *area, unsigned int size)
{
 __le32 *ptr;

 for (ptr = area; size >= sizeof(u32); size -= sizeof(u32))
  *ptr++ = cpu_to_le32(AARCH64_BREAK_FAULT);
}
