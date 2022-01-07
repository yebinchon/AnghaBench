
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int EINVAL ;
 scalar_t__ INT_MAX ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_fetch_add_unless (int *,int,int ) ;

__attribute__((used)) static int atomic_inc_return_safe(atomic_t *v)
{
 unsigned int counter;

 counter = (unsigned int)atomic_fetch_add_unless(v, 1, 0);
 if (counter <= (unsigned int)INT_MAX)
  return (int)counter;

 atomic_dec(v);

 return -EINVAL;
}
