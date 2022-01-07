
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numDisplayServers; int * displayServers; int sortDir; int sortKey; } ;
struct TYPE_4__ {TYPE_1__ serverStatus; } ;


 int UI_InsertServerIntoDisplayList (int,int) ;
 int UI_SourceForLAN () ;
 int trap_LAN_CompareServers (int ,int ,int ,int,int ) ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static void UI_BinaryServerInsertion(int num) {
 int mid, offset, res, len;


 len = uiInfo.serverStatus.numDisplayServers;
 mid = len;
 offset = 0;
 res = 0;
 while(mid > 0) {
  mid = len >> 1;

  res = trap_LAN_CompareServers( UI_SourceForLAN(), uiInfo.serverStatus.sortKey,
     uiInfo.serverStatus.sortDir, num, uiInfo.serverStatus.displayServers[offset+mid]);

  if (res == 0) {
   UI_InsertServerIntoDisplayList(num, offset+mid);
   return;
  }

  else if (res == 1) {
   offset += mid;
   len -= mid;
  }

  else {
   len -= mid;
  }
 }
 if (res == 1) {
  offset++;
 }
 UI_InsertServerIntoDisplayList(num, offset);
}
