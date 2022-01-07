
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blk_status_t ;


 scalar_t__ pf_busy ;
 int pf_end_request (int ) ;
 int pf_request () ;
 int pf_spin_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void next_request(blk_status_t err)
{
 unsigned long saved_flags;

 spin_lock_irqsave(&pf_spin_lock, saved_flags);
 pf_end_request(err);
 pf_busy = 0;
 pf_request();
 spin_unlock_irqrestore(&pf_spin_lock, saved_flags);
}
