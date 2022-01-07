
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int entropy ;
typedef int __u64 ;
struct TYPE_3__ {int parm_block; } ;
struct TYPE_4__ {TYPE_1__ prngws; } ;


 int CPACF_KMC_PRNG ;
 int cpacf_kmc (int ,int ,char*,char*,int) ;
 int memcpy (int ,int *,int) ;
 TYPE_2__* prng_data ;

__attribute__((used)) static void prng_tdes_add_entropy(void)
{
 __u64 entropy[4];
 unsigned int i;

 for (i = 0; i < 16; i++) {
  cpacf_kmc(CPACF_KMC_PRNG, prng_data->prngws.parm_block,
     (char *) entropy, (char *) entropy,
     sizeof(entropy));
  memcpy(prng_data->prngws.parm_block, entropy, sizeof(entropy));
 }
}
