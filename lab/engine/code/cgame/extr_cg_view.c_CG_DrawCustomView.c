
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int time; } ;
struct TYPE_7__ {TYPE_2__ refdef; int renderingThirdPerson; int time; TYPE_1__* snap; } ;
struct TYPE_5__ {int snapFlags; } ;


 int CG_AddLocalEntities () ;
 int CG_AddMarks () ;
 int CG_AddPacketEntities () ;
 int CG_AddParticles () ;
 int SNAPFLAG_NOT_ACTIVE ;
 TYPE_4__ cg ;
 int dmlab_custom_view (TYPE_2__*) ;
 int trap_R_ClearScene () ;
 int trap_R_RenderScene (TYPE_2__*) ;

void CG_DrawCustomView() {
 trap_R_ClearScene();
 if ( !cg.snap || ( cg.snap->snapFlags & SNAPFLAG_NOT_ACTIVE ) ) {
  return;
 }
 cg.refdef.time = cg.time;
 cg.renderingThirdPerson = dmlab_custom_view( &cg.refdef );
 CG_AddPacketEntities();
 CG_AddMarks();
 CG_AddParticles();
 CG_AddLocalEntities();


 trap_R_RenderScene( &cg.refdef );
}
