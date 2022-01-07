
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sysinfo_1_1_1 {int sequence; int plant; int manufacturer; int type; } ;
struct TYPE_2__ {int infmval1; int infmseq; int infmpman; int infmmanu; int infmtype; scalar_t__ infmname; } ;
struct sthyi_sctns {TYPE_1__ mac; } ;


 int MAC_ID_VLD ;
 int MAC_NAME_VLD ;
 int memcpy (int ,int ,int) ;
 int sclp_ocf_cpc_name_copy (scalar_t__) ;
 scalar_t__ stsi (struct sysinfo_1_1_1*,int,int,int) ;

__attribute__((used)) static void fill_stsi_mac(struct sthyi_sctns *sctns,
     struct sysinfo_1_1_1 *sysinfo)
{
 sclp_ocf_cpc_name_copy(sctns->mac.infmname);
 if (*(u64 *)sctns->mac.infmname != 0)
  sctns->mac.infmval1 |= MAC_NAME_VLD;

 if (stsi(sysinfo, 1, 1, 1))
  return;

 memcpy(sctns->mac.infmtype, sysinfo->type, sizeof(sctns->mac.infmtype));
 memcpy(sctns->mac.infmmanu, sysinfo->manufacturer, sizeof(sctns->mac.infmmanu));
 memcpy(sctns->mac.infmpman, sysinfo->plant, sizeof(sctns->mac.infmpman));
 memcpy(sctns->mac.infmseq, sysinfo->sequence, sizeof(sctns->mac.infmseq));

 sctns->mac.infmval1 |= MAC_ID_VLD;
}
