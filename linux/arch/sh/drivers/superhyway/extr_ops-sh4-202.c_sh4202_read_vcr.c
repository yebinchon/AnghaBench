
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct superhyway_vcr_info {int dummy; } ;


 int __raw_readl (unsigned long) ;
 int memcpy (struct superhyway_vcr_info*,int*,int) ;

__attribute__((used)) static int sh4202_read_vcr(unsigned long base, struct superhyway_vcr_info *vcr)
{
 u32 vcrh, vcrl;
 u64 tmp;
 vcrh = __raw_readl(base);
 vcrl = __raw_readl(base + sizeof(u32));

 tmp = ((u64)vcrh << 32) | vcrl;
 memcpy(vcr, &tmp, sizeof(u64));

 return 0;
}
