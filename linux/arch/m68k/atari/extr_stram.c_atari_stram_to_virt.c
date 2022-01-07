
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ stram_virt_offset ;

void *atari_stram_to_virt(unsigned long phys)
{
 return (void *)(phys + stram_virt_offset);
}
