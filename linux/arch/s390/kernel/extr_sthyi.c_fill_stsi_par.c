
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysinfo_2_2_2 {int name; int lpar_number; } ;
struct TYPE_2__ {int infpval1; int infppnam; int infppnum; } ;
struct sthyi_sctns {TYPE_1__ par; } ;


 int PAR_ID_VLD ;
 int memcpy (int ,int ,int) ;
 scalar_t__ stsi (struct sysinfo_2_2_2*,int,int,int) ;

__attribute__((used)) static void fill_stsi_par(struct sthyi_sctns *sctns,
     struct sysinfo_2_2_2 *sysinfo)
{
 if (stsi(sysinfo, 2, 2, 2))
  return;

 sctns->par.infppnum = sysinfo->lpar_number;
 memcpy(sctns->par.infppnam, sysinfo->name, sizeof(sctns->par.infppnam));

 sctns->par.infpval1 |= PAR_ID_VLD;
}
