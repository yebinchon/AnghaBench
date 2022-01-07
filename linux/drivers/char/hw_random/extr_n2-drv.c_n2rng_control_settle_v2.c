
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct n2rng {int * scratch_control; } ;


 unsigned long __pa (int *) ;
 unsigned long n2rng_generic_read_control_v2 (unsigned long,int) ;

__attribute__((used)) static unsigned long n2rng_control_settle_v2(struct n2rng *np, int unit)
{
 unsigned long ra = __pa(&np->scratch_control[0]);

 return n2rng_generic_read_control_v2(ra, unit);
}
