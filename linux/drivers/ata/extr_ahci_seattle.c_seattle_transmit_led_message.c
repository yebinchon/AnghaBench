
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct seattle_plat_data {int sgpio_ctrl; } ;
struct ata_port {int lock; int port_no; struct ahci_port_priv* private_data; TYPE_1__* host; } ;
struct ahci_port_priv {struct ahci_em_priv* em_priv; } ;
struct ahci_host_priv {struct seattle_plat_data* plat_data; } ;
struct ahci_em_priv {int led_state; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct ahci_host_priv* private_data; } ;


 int ACTIVITY_BIT_POS (int ) ;
 int ACTIVITY_MASK ;
 int EINVAL ;
 int EM_MAX_SLOTS ;
 int EM_MSG_LED_PMP_SLOT ;
 int FAULT_BIT_POS (int ) ;
 int FAULT_MASK ;
 int LOCATE_BIT_POS (int ) ;
 int LOCATE_MASK ;
 int ioread32 (int ) ;
 int iowrite32 (int,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static ssize_t seattle_transmit_led_message(struct ata_port *ap, u32 state,
         ssize_t size)
{
 struct ahci_host_priv *hpriv = ap->host->private_data;
 struct ahci_port_priv *pp = ap->private_data;
 struct seattle_plat_data *plat_data = hpriv->plat_data;
 unsigned long flags;
 int pmp;
 struct ahci_em_priv *emp;
 u32 val;


 pmp = (state & EM_MSG_LED_PMP_SLOT) >> 8;
 if (pmp >= EM_MAX_SLOTS)
  return -EINVAL;
 emp = &pp->em_priv[pmp];

 val = ioread32(plat_data->sgpio_ctrl);
 if (state & ACTIVITY_MASK)
  val |= 1 << ACTIVITY_BIT_POS((ap->port_no));
 else
  val &= ~(1 << ACTIVITY_BIT_POS((ap->port_no)));

 if (state & LOCATE_MASK)
  val |= 1 << LOCATE_BIT_POS((ap->port_no));
 else
  val &= ~(1 << LOCATE_BIT_POS((ap->port_no)));

 if (state & FAULT_MASK)
  val |= 1 << FAULT_BIT_POS((ap->port_no));
 else
  val &= ~(1 << FAULT_BIT_POS((ap->port_no)));

 iowrite32(val, plat_data->sgpio_ctrl);

 spin_lock_irqsave(ap->lock, flags);


 emp->led_state = state;

 spin_unlock_irqrestore(ap->lock, flags);

 return size;
}
