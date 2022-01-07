
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void jit_fill_hole(void *area, unsigned int size)
{
 u32 *ptr;

 for (ptr = area; size >= sizeof(u32); size -= sizeof(u32))
  *ptr++ = 0x91d02005;
}
