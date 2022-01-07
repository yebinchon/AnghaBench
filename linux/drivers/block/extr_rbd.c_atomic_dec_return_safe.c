
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atomic_t ;


 int EINVAL ;
 int atomic_dec_return (int *) ;
 int atomic_inc (int *) ;

__attribute__((used)) static int atomic_dec_return_safe(atomic_t *v)
{
 int counter;

 counter = atomic_dec_return(v);
 if (counter >= 0)
  return counter;

 atomic_inc(v);

 return -EINVAL;
}
