
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int infmval1; int infmsifl; int infmdifl; int infmscps; int infmdcps; } ;
struct sthyi_sctns {TYPE_2__ mac; } ;
struct TYPE_6__ {int cpus; } ;
struct diag204_x_phys_block {TYPE_1__* cpus; TYPE_3__ hdr; } ;
struct TYPE_4__ {int weight; int ctidx; } ;



 int DED_WEIGHT ;

 int MAC_CNT_VLD ;
 int cpu_id (int ,void*) ;

__attribute__((used)) static void fill_diag_mac(struct sthyi_sctns *sctns,
     struct diag204_x_phys_block *block,
     void *diag224_buf)
{
 int i;

 for (i = 0; i < block->hdr.cpus; i++) {
  switch (cpu_id(block->cpus[i].ctidx, diag224_buf)) {
  case 129:
   if (block->cpus[i].weight == DED_WEIGHT)
    sctns->mac.infmdcps++;
   else
    sctns->mac.infmscps++;
   break;
  case 128:
   if (block->cpus[i].weight == DED_WEIGHT)
    sctns->mac.infmdifl++;
   else
    sctns->mac.infmsifl++;
   break;
  }
 }
 sctns->mac.infmval1 |= MAC_CNT_VLD;
}
