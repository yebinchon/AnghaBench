
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct sata_oxnas_host_priv {int core_lock; TYPE_1__ fast_wait_queue; } ;
struct ata_host {struct sata_oxnas_host_priv* private_data; } ;


 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int sata_core_has_fast_waiters(struct ata_host *ah)
{
 int has_waiters;
 unsigned long flags;
 struct sata_oxnas_host_priv *hd = ah->private_data;

 spin_lock_irqsave(&hd->core_lock, flags);
 has_waiters = !list_empty(&hd->fast_wait_queue.head);
 spin_unlock_irqrestore(&hd->core_lock, flags);

 return has_waiters;
}
