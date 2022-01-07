
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ loff_t ;


 scalar_t__ NVRAM_BYTES ;
 int __nvram_set_checksum () ;
 int __nvram_write_byte (int ,scalar_t__) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

long atari_nvram_initialize(void)
{
 loff_t i;

 spin_lock_irq(&rtc_lock);
 for (i = 0; i < NVRAM_BYTES; ++i)
  __nvram_write_byte(0, i);
 __nvram_set_checksum();
 spin_unlock_irq(&rtc_lock);
 return 0;
}
