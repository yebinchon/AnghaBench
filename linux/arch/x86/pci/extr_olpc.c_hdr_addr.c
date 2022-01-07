
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ bar_probing ;

__attribute__((used)) static uint32_t *hdr_addr(const uint32_t *hdr, int reg)
{
 uint32_t addr;
 addr = (uint32_t)hdr + reg + (bar_probing ? -0x10 : 0x20);

 bar_probing = 0;
 return (uint32_t *)addr;
}
