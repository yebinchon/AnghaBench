
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;


 int spu_free_lscsa (struct spu_state*) ;

void spu_fini_csa(struct spu_state *csa)
{
 spu_free_lscsa(csa);
}
