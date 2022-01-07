
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu {TYPE_1__* priv1; } ;
struct TYPE_2__ {int mfc_sdr_RW; } ;


 int SPRN_SDR1 ;
 int mfspr (int ) ;
 int out_be64 (int *,int ) ;

__attribute__((used)) static void mfc_sdr_setup(struct spu *spu)
{
 out_be64(&spu->priv1->mfc_sdr_RW, mfspr(SPRN_SDR1));
}
