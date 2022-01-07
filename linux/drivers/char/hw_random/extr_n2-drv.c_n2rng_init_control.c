
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n2rng {int dummy; } ;


 int EPERM ;
 int n2rng_control_swstate_init (struct n2rng*) ;
 int n2rng_grab_diag_control (struct n2rng*) ;

__attribute__((used)) static int n2rng_init_control(struct n2rng *np)
{
 int err = n2rng_grab_diag_control(np);




 if (err == -EPERM)
  return 0;
 if (err)
  return err;

 n2rng_control_swstate_init(np);

 return 0;
}
