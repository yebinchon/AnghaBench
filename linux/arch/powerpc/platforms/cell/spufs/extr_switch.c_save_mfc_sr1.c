
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mfc_sr1_RW; } ;
struct spu_state {TYPE_1__ priv1; } ;
struct spu {int dummy; } ;


 int spu_mfc_sr1_get (struct spu*) ;

__attribute__((used)) static inline void save_mfc_sr1(struct spu_state *csa, struct spu *spu)
{



 csa->priv1.mfc_sr1_RW = spu_mfc_sr1_get(spu);
}
