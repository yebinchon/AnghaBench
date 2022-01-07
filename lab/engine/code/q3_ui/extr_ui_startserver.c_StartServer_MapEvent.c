
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ id; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_4__ {int page; scalar_t__ currentmap; } ;


 scalar_t__ ID_PICTURES ;
 int MAX_MAPSPERPAGE ;
 int QM_ACTIVATED ;
 int StartServer_Update () ;
 TYPE_2__ s_startserver ;

__attribute__((used)) static void StartServer_MapEvent( void* ptr, int event ) {
 if( event != QM_ACTIVATED) {
  return;
 }

 s_startserver.currentmap = (s_startserver.page*MAX_MAPSPERPAGE) + (((menucommon_s*)ptr)->id - ID_PICTURES);
 StartServer_Update();
}
