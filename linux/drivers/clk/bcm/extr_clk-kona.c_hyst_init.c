
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccu_data {int dummy; } ;
struct bcm_clk_hyst {int offset; int en_bit; int val_bit; } ;


 int __ccu_read (struct ccu_data*,int) ;
 int __ccu_write (struct ccu_data*,int,int) ;
 int hyst_exists (struct bcm_clk_hyst*) ;

__attribute__((used)) static bool hyst_init(struct ccu_data *ccu, struct bcm_clk_hyst *hyst)
{
 u32 offset;
 u32 reg_val;
 u32 mask;

 if (!hyst_exists(hyst))
  return 1;

 offset = hyst->offset;
 mask = (u32)1 << hyst->en_bit;
 mask |= (u32)1 << hyst->val_bit;

 reg_val = __ccu_read(ccu, offset);
 reg_val |= mask;
 __ccu_write(ccu, offset, reg_val);

 return 1;
}
