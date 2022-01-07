
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssif_info {int lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;

__attribute__((used)) static unsigned long *ipmi_ssif_lock_cond(struct ssif_info *ssif_info,
       unsigned long *flags)
{
 spin_lock_irqsave(&ssif_info->lock, *flags);
 return flags;
}
