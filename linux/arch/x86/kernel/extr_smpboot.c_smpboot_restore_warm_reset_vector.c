
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int CMOS_WRITE (int ,int) ;
 int TRAMPOLINE_PHYS_LOW ;
 scalar_t__ phys_to_virt (int ) ;
 int rtc_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void smpboot_restore_warm_reset_vector(void)
{
 unsigned long flags;





 spin_lock_irqsave(&rtc_lock, flags);
 CMOS_WRITE(0, 0xf);
 spin_unlock_irqrestore(&rtc_lock, flags);

 *((volatile u32 *)phys_to_virt(TRAMPOLINE_PHYS_LOW)) = 0;
}
