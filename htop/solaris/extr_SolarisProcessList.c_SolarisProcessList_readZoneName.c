
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* ks_name; } ;
typedef TYPE_1__ kstat_t ;
typedef int kstat_ctl_t ;
struct TYPE_6__ {scalar_t__ zoneid; } ;
typedef TYPE_2__ SolarisProcess ;


 TYPE_1__* kstat_lookup (int *,char*,scalar_t__,int *) ;
 char* xStrdup (char*) ;

char* SolarisProcessList_readZoneName(kstat_ctl_t* kd, SolarisProcess* sproc) {
  char* zname;
  if ( sproc->zoneid == 0 ) {
     zname = xStrdup("global    ");
  } else if ( kd == ((void*)0) ) {
     zname = xStrdup("unknown   ");
  } else {
     kstat_t* ks = kstat_lookup( kd, "zones", sproc->zoneid, ((void*)0) );
     zname = xStrdup(ks->ks_name);
  }
  return zname;
}
