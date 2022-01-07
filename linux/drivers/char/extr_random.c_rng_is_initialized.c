
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crng_ready () ;

bool rng_is_initialized(void)
{
 return crng_ready();
}
