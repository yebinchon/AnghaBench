
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dra7_atl_clock_info {scalar_t__ iobase; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void atl_write(struct dra7_atl_clock_info *cinfo, u32 reg,
        u32 val)
{
 __raw_writel(val, cinfo->iobase + reg);
}
