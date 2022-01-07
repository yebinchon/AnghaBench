
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BYTES_BEFORE_RESEED ;
 int arc4_count ;
 int arc4_getbyte () ;
 int arc4_init () ;
 scalar_t__ arc4_seed () ;
 int rs_initialized ;

__attribute__((used)) static int
arc4_stir(void)
{
 int i;

 if (!rs_initialized) {
  arc4_init();
  rs_initialized = 1;
 }

 if (0 != arc4_seed())
  return -1;
 for (i = 0; i < 12*256; i++)
  (void)arc4_getbyte();

 arc4_count = BYTES_BEFORE_RESEED;

 return 0;
}
