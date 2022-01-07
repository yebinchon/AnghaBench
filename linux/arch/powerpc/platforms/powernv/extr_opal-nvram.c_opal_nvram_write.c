
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef scalar_t__ s64 ;
typedef int loff_t ;


 size_t EIO ;
 scalar_t__ OPAL_BUSY ;
 int OPAL_BUSY_DELAY_MS ;
 scalar_t__ OPAL_BUSY_EVENT ;
 int __pa (char*) ;
 scalar_t__ in_interrupt () ;
 scalar_t__ irqs_disabled () ;
 int mdelay (int ) ;
 int msleep (int ) ;
 int nvram_size ;
 int opal_poll_events (int *) ;
 scalar_t__ opal_write_nvram (int ,size_t,int) ;

__attribute__((used)) static ssize_t opal_nvram_write(char *buf, size_t count, loff_t *index)
{
 s64 rc = OPAL_BUSY;
 int off;

 if (*index >= nvram_size)
  return 0;
 off = *index;
 if ((off + count) > nvram_size)
  count = nvram_size - off;

 while (rc == OPAL_BUSY || rc == OPAL_BUSY_EVENT) {
  rc = opal_write_nvram(__pa(buf), count, off);
  if (rc == OPAL_BUSY_EVENT) {
   if (in_interrupt() || irqs_disabled())
    mdelay(OPAL_BUSY_DELAY_MS);
   else
    msleep(OPAL_BUSY_DELAY_MS);
   opal_poll_events(((void*)0));
  } else if (rc == OPAL_BUSY) {
   if (in_interrupt() || irqs_disabled())
    mdelay(OPAL_BUSY_DELAY_MS);
   else
    msleep(OPAL_BUSY_DELAY_MS);
  }
 }

 if (rc)
  return -EIO;

 *index += count;
 return count;
}
