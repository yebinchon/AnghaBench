
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long atomic_read (int *) ;
 int chipavail ;
 int pr_debug (char*,unsigned long) ;

unsigned long amiga_chip_avail(void)
{
 unsigned long n = atomic_read(&chipavail);

 pr_debug("amiga_chip_avail : %lu bytes\n", n);
 return n;
}
