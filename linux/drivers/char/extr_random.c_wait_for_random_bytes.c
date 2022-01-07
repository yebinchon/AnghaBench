
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int crng_init_wait ;
 int crng_ready () ;
 scalar_t__ likely (int ) ;
 int try_to_generate_entropy () ;
 int wait_event_interruptible_timeout (int ,int ,int ) ;

int wait_for_random_bytes(void)
{
 if (likely(crng_ready()))
  return 0;

 do {
  int ret;
  ret = wait_event_interruptible_timeout(crng_init_wait, crng_ready(), HZ);
  if (ret)
   return ret > 0 ? 0 : ret;

  try_to_generate_entropy();
 } while (!crng_ready());

 return 0;
}
