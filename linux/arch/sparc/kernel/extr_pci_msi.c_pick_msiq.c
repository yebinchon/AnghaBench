
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_pbm_info {scalar_t__ msiq_rotor; scalar_t__ msiq_first; scalar_t__ msiq_num; } ;
typedef int DEFINE_SPINLOCK ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 pick_msiq(struct pci_pbm_info *pbm)
{
 static DEFINE_SPINLOCK(rotor_lock);
 unsigned long flags;
 u32 ret, rotor;

 spin_lock_irqsave(&rotor_lock, flags);

 rotor = pbm->msiq_rotor;
 ret = pbm->msiq_first + rotor;

 if (++rotor >= pbm->msiq_num)
  rotor = 0;
 pbm->msiq_rotor = rotor;

 spin_unlock_irqrestore(&rotor_lock, flags);

 return ret;
}
