
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int EIO ;
 scalar_t__ NVRAM_BYTES ;
 int __nvram_check_checksum () ;
 char __nvram_read_byte (scalar_t__) ;
 int rtc_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

ssize_t atari_nvram_read(char *buf, size_t count, loff_t *ppos)
{
 char *p = buf;
 loff_t i;

 spin_lock_irq(&rtc_lock);
 if (!__nvram_check_checksum()) {
  spin_unlock_irq(&rtc_lock);
  return -EIO;
 }
 for (i = *ppos; count > 0 && i < NVRAM_BYTES; --count, ++i, ++p)
  *p = __nvram_read_byte(i);
 spin_unlock_irq(&rtc_lock);

 *ppos = i;
 return p - buf;
}
