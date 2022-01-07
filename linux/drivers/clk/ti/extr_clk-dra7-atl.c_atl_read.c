
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dra7_atl_clock_info {scalar_t__ iobase; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline int atl_read(struct dra7_atl_clock_info *cinfo, u32 reg)
{
 return __raw_readl(cinfo->iobase + reg);
}
