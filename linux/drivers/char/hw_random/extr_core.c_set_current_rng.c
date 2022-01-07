
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrng {int dummy; } ;


 int BUG_ON (int) ;
 struct hwrng* current_rng ;
 int drop_current_rng () ;
 int hwrng_init (struct hwrng*) ;
 int mutex_is_locked (int *) ;
 int rng_mutex ;

__attribute__((used)) static int set_current_rng(struct hwrng *rng)
{
 int err;

 BUG_ON(!mutex_is_locked(&rng_mutex));

 err = hwrng_init(rng);
 if (err)
  return err;

 drop_current_rng();
 current_rng = rng;

 return 0;
}
