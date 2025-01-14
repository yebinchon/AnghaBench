
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KSEG0 ;
 unsigned long ST0_CM ;
 unsigned long ST0_IEC ;
 unsigned long read_c0_status () ;
 int write_c0_status (unsigned long) ;

unsigned long r3k_cache_lsize(unsigned long ca_flags)
{
 unsigned long flags, status, lsize, i;
 volatile unsigned long *p;

 p = (volatile unsigned long *) KSEG0;

 flags = read_c0_status();


 write_c0_status((ca_flags|flags)&~ST0_IEC);

 for (i = 0; i < 128; i++)
  *(p + i) = 0;
 *(volatile unsigned char *)p = 0;
 for (lsize = 1; lsize < 128; lsize <<= 1) {
  *(p + lsize);
  status = read_c0_status();
  if (!(status & ST0_CM))
   break;
 }
 for (i = 0; i < 128; i += lsize)
  *(volatile unsigned char *)(p + i) = 0;

 write_c0_status(flags);

 return lsize * sizeof(*p);
}
