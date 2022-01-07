
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PCIMT_CSMSR ;

__attribute__((used)) static inline int is_rm300_revd(void)
{
 unsigned char csmsr = *(volatile unsigned char *)PCIMT_CSMSR;

 return (csmsr & 0xa0) == 0x20;
}
