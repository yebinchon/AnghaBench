
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numDrawSurfs; int drawSurfs; int viewParms; int refdef; } ;
typedef TYPE_1__ drawSurfsCommand_t ;
struct TYPE_6__ {int viewParms; int refdef; } ;
struct TYPE_5__ {scalar_t__ numIndexes; } ;


 int RB_EndSurface () ;
 int RB_RenderDrawSurfList (int ,int ) ;
 TYPE_3__ backEnd ;
 TYPE_2__ tess ;

const void *RB_DrawSurfs( const void *data ) {
 const drawSurfsCommand_t *cmd;


 if ( tess.numIndexes ) {
  RB_EndSurface();
 }

 cmd = (const drawSurfsCommand_t *)data;

 backEnd.refdef = cmd->refdef;
 backEnd.viewParms = cmd->viewParms;

 RB_RenderDrawSurfList( cmd->drawSurfs, cmd->numDrawSurfs );

 return (const void *)(cmd + 1);
}
