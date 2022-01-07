
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_psc_data {int domain_id; int domain_base; int control_base; } ;
struct clk_psc {scalar_t__ lock; struct clk_psc_data* psc_data; } ;
struct clk_hw {int dummy; } ;


 int PSC_STATE_ENABLE ;
 int psc_config (int ,int ,int ,int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 struct clk_psc* to_clk_psc (struct clk_hw*) ;

__attribute__((used)) static int keystone_clk_enable(struct clk_hw *hw)
{
 struct clk_psc *psc = to_clk_psc(hw);
 struct clk_psc_data *data = psc->psc_data;
 unsigned long flags = 0;

 if (psc->lock)
  spin_lock_irqsave(psc->lock, flags);

 psc_config(data->control_base, data->domain_base,
    PSC_STATE_ENABLE, data->domain_id);

 if (psc->lock)
  spin_unlock_irqrestore(psc->lock, flags);

 return 0;
}
