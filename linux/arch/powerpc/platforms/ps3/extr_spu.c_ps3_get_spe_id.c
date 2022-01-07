
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int spe_id; } ;


 TYPE_1__* spu_pdata (void*) ;

u64 ps3_get_spe_id(void *arg)
{
 return spu_pdata(arg)->spe_id;
}
