
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void arc_write_me(unsigned short *addr, unsigned long value)
{
 *addr = (value & 0xffff0000) >> 16;
 *(addr + 1) = (value & 0xffff);
}
