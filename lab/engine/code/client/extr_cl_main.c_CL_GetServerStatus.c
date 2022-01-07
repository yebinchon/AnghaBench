
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int startTime; scalar_t__ retrieved; int address; } ;
typedef TYPE_1__ serverStatus_t ;
typedef int netadr_t ;


 int MAX_SERVERSTATUSREQUESTS ;
 scalar_t__ NET_CompareAdr (int ,int ) ;
 TYPE_1__* cl_serverStatusList ;

serverStatus_t *CL_GetServerStatus( netadr_t from ) {
 int i, oldest, oldestTime;

 for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {
  if ( NET_CompareAdr( from, cl_serverStatusList[i].address ) ) {
   return &cl_serverStatusList[i];
  }
 }
 for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {
  if ( cl_serverStatusList[i].retrieved ) {
   return &cl_serverStatusList[i];
  }
 }
 oldest = -1;
 oldestTime = 0;
 for (i = 0; i < MAX_SERVERSTATUSREQUESTS; i++) {
  if (oldest == -1 || cl_serverStatusList[i].startTime < oldestTime) {
   oldest = i;
   oldestTime = cl_serverStatusList[i].startTime;
  }
 }
 return &cl_serverStatusList[oldest];
}
