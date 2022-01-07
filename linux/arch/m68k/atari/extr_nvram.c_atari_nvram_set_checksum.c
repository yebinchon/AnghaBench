
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __nvram_set_checksum () ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

long atari_nvram_set_checksum(void)
{
 spin_lock_irq(&rtc_lock);
 __nvram_set_checksum();
 spin_unlock_irq(&rtc_lock);
 return 0;
}
