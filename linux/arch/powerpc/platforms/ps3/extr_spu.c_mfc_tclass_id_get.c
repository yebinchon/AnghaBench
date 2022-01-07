
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct spu {int dummy; } ;
struct TYPE_3__ {int tclass_id; } ;
struct TYPE_4__ {TYPE_1__ cache; } ;


 TYPE_2__* spu_pdata (struct spu*) ;

__attribute__((used)) static u64 mfc_tclass_id_get(struct spu *spu)
{
 return spu_pdata(spu)->cache.tclass_id;
}
