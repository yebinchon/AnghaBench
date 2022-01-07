
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int dummy; } ;


 int powernv_get_random_long (int ) ;

__attribute__((used)) static int powernv_rng_read(struct hwrng *rng, void *data, size_t max, bool wait)
{
 unsigned long *buf;
 int i, len;


 len = max / sizeof(unsigned long);

 buf = (unsigned long *)data;

 for (i = 0; i < len; i++)
  powernv_get_random_long(buf++);

 return len * sizeof(unsigned long);
}
