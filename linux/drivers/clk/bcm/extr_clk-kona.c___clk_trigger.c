
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccu_data {int dummy; } ;
struct bcm_clk_trig {int bit; int offset; } ;


 int __ccu_wait_bit (struct ccu_data*,int ,int,int) ;
 int __ccu_write (struct ccu_data*,int ,int) ;

__attribute__((used)) static bool __clk_trigger(struct ccu_data *ccu, struct bcm_clk_trig *trig)
{

 __ccu_write(ccu, trig->offset, 1 << trig->bit);

 return __ccu_wait_bit(ccu, trig->offset, trig->bit, 0);
}
