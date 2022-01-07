
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef unsigned int loff_t ;


 int EIO ;
 int ENODEV ;
 unsigned long NVRW_CNT ;
 scalar_t__ RTAS_UNKNOWN_SERVICE ;
 int __pa (int ) ;
 int memcpy (char*,int ,unsigned long) ;
 int nvram_buf ;
 scalar_t__ nvram_fetch ;
 int nvram_lock ;
 unsigned int nvram_size ;
 scalar_t__ rtas_call (scalar_t__,int,int,int*,unsigned int,int ,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t pSeries_nvram_read(char *buf, size_t count, loff_t *index)
{
 unsigned int i;
 unsigned long len;
 int done;
 unsigned long flags;
 char *p = buf;


 if (nvram_size == 0 || nvram_fetch == RTAS_UNKNOWN_SERVICE)
  return -ENODEV;

 if (*index >= nvram_size)
  return 0;

 i = *index;
 if (i + count > nvram_size)
  count = nvram_size - i;

 spin_lock_irqsave(&nvram_lock, flags);

 for (; count != 0; count -= len) {
  len = count;
  if (len > NVRW_CNT)
   len = NVRW_CNT;

  if ((rtas_call(nvram_fetch, 3, 2, &done, i, __pa(nvram_buf),
          len) != 0) || len != done) {
   spin_unlock_irqrestore(&nvram_lock, flags);
   return -EIO;
  }

  memcpy(p, nvram_buf, len);

  p += len;
  i += len;
 }

 spin_unlock_irqrestore(&nvram_lock, flags);

 *index = i;
 return p - buf;
}
