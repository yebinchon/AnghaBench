
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int lock; } ;


 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipmi_ssif_unlock_cond(struct ssif_info *ssif_info,
      unsigned long *flags)
{
 spin_unlock_irqrestore(&ssif_info->lock, *flags);
}
