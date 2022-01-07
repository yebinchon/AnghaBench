
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u64 ;


 scalar_t__ ktime_get_ns () ;
 scalar_t__ random_get_entropy () ;

void jent_get_nstime(__u64 *out)
{
 __u64 tmp = 0;

 tmp = random_get_entropy();






 if (tmp == 0)
  tmp = ktime_get_ns();

 *out = tmp;
}
