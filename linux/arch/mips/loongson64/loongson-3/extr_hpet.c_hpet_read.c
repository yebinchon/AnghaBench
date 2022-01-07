
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HPET_MMIO_ADDR ;

__attribute__((used)) static int hpet_read(int offset)
{
 return *(volatile unsigned int *)(HPET_MMIO_ADDR + offset);
}
