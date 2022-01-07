
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ realTime; } ;
struct TYPE_4__ {scalar_t__ refreshtime; int refreshActive; } ;
struct TYPE_6__ {TYPE_2__ uiDC; TYPE_1__ serverStatus; } ;


 int UI_SourceForLAN () ;
 int qtrue ;
 int trap_LAN_ResetPings (int ) ;
 TYPE_3__ uiInfo ;

__attribute__((used)) static void UI_UpdatePendingPings( void ) {
 trap_LAN_ResetPings(UI_SourceForLAN());
 uiInfo.serverStatus.refreshActive = qtrue;
 uiInfo.serverStatus.refreshtime = uiInfo.uiDC.realTime + 1000;

}
