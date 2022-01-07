
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stram_virt_offset ;

unsigned long atari_stram_to_phys(void *virt)
{
 return (unsigned long)(virt - stram_virt_offset);
}
