
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct bcma_drv_cc {int dummy; } ;


 int bcma_cc_read32 (struct bcma_drv_cc*,int ) ;
 int bcma_cc_write32 (struct bcma_drv_cc*,int ,int) ;

__attribute__((used)) static inline u32 bcma_cc_write32_masked(struct bcma_drv_cc *cc, u16 offset,
      u32 mask, u32 value)
{
 value &= mask;
 value |= bcma_cc_read32(cc, offset) & ~mask;
 bcma_cc_write32(cc, offset, value);

 return value;
}
