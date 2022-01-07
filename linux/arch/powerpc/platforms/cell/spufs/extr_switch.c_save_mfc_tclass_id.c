
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mfc_tclass_id_RW; } ;
struct spu_state {TYPE_1__ priv1; } ;
struct spu {int dummy; } ;


 int spu_mfc_tclass_id_get (struct spu*) ;

__attribute__((used)) static inline void save_mfc_tclass_id(struct spu_state *csa, struct spu *spu)
{




 csa->priv1.mfc_tclass_id_RW = spu_mfc_tclass_id_get(spu);
}
