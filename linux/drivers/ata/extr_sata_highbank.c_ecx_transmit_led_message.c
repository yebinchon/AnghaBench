
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ecx_plat_data {int sgpio_pattern; int pre_clocks; int n_ports; int post_clocks; int * sgpio_gpiod; } ;
struct ata_port {int port_no; struct ahci_port_priv* private_data; TYPE_1__* host; } ;
struct ahci_port_priv {struct ahci_em_priv* em_priv; } ;
struct ahci_host_priv {int em_msg_type; struct ecx_plat_data* plat_data; } ;
struct ahci_em_priv {int led_state; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;


 int EINVAL ;
 int EM_MAX_SLOTS ;
 int EM_MSG_LED_PMP_SLOT ;
 int EM_MSG_TYPE_LED ;
 size_t SDATA ;
 int SGPIO_SIGNALS ;
 size_t SLOAD ;
 int ecx_led_cycle_clock (struct ecx_plat_data*) ;
 int ecx_parse_sgpio (struct ecx_plat_data*,int ,int) ;
 int gpiod_set_value (int ,int) ;
 int sgpio_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t ecx_transmit_led_message(struct ata_port *ap, u32 state,
     ssize_t size)
{
 struct ahci_host_priv *hpriv = ap->host->private_data;
 struct ecx_plat_data *pdata = hpriv->plat_data;
 struct ahci_port_priv *pp = ap->private_data;
 unsigned long flags;
 int pmp, i;
 struct ahci_em_priv *emp;
 u32 sgpio_out;


 pmp = (state & EM_MSG_LED_PMP_SLOT) >> 8;
 if (pmp < EM_MAX_SLOTS)
  emp = &pp->em_priv[pmp];
 else
  return -EINVAL;

 if (!(hpriv->em_msg_type & EM_MSG_TYPE_LED))
  return size;

 spin_lock_irqsave(&sgpio_lock, flags);
 ecx_parse_sgpio(pdata, ap->port_no, state);
 sgpio_out = pdata->sgpio_pattern;
 for (i = 0; i < pdata->pre_clocks; i++)
  ecx_led_cycle_clock(pdata);

 gpiod_set_value(pdata->sgpio_gpiod[SLOAD], 1);
 ecx_led_cycle_clock(pdata);
 gpiod_set_value(pdata->sgpio_gpiod[SLOAD], 0);




 for (i = 0; i < (SGPIO_SIGNALS * pdata->n_ports); i++) {
  gpiod_set_value(pdata->sgpio_gpiod[SDATA], sgpio_out & 1);
  sgpio_out >>= 1;
  ecx_led_cycle_clock(pdata);
 }
 for (i = 0; i < pdata->post_clocks; i++)
  ecx_led_cycle_clock(pdata);


 emp->led_state = state;

 spin_unlock_irqrestore(&sgpio_lock, flags);
 return size;
}
