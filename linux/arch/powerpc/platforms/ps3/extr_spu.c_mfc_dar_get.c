
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct spu {int dummy; } ;
struct TYPE_4__ {TYPE_1__* shadow; } ;
struct TYPE_3__ {int mfc_dar_RW; } ;


 int in_be64 (int *) ;
 TYPE_2__* spu_pdata (struct spu*) ;

__attribute__((used)) static u64 mfc_dar_get(struct spu *spu)
{
 return in_be64(&spu_pdata(spu)->shadow->mfc_dar_RW);
}
