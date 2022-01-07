
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KSEG0 ;
 unsigned long ST0_CM ;
 unsigned long ST0_IEC ;
 unsigned long read_c0_status () ;
 int write_c0_status (unsigned long) ;

unsigned long r3k_cache_size(unsigned long ca_flags)
{
 unsigned long flags, status, dummy, size;
 volatile unsigned long *p;

 p = (volatile unsigned long *) KSEG0;

 flags = read_c0_status();


 write_c0_status((ca_flags|flags)&~ST0_IEC);

 *p = 0xa5a55a5a;
 dummy = *p;
 status = read_c0_status();

 if (dummy != 0xa5a55a5a || (status & ST0_CM)) {
  size = 0;
 } else {
  for (size = 128; size <= 0x40000; size <<= 1)
   *(p + size) = 0;
  *p = -1;
  for (size = 128;
       (size <= 0x40000) && (*(p + size) == 0);
       size <<= 1)
   ;
  if (size > 0x40000)
   size = 0;
 }

 write_c0_status(flags);

 return size * sizeof(*p);
}
