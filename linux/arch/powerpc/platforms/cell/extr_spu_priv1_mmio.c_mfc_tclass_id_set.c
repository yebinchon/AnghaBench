
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu {TYPE_1__* priv1; } ;
struct TYPE_2__ {int mfc_tclass_id_RW; } ;


 int out_be64 (int *,int ) ;

__attribute__((used)) static void mfc_tclass_id_set(struct spu *spu, u64 tclass_id)
{
 out_be64(&spu->priv1->mfc_tclass_id_RW, tclass_id);
}
