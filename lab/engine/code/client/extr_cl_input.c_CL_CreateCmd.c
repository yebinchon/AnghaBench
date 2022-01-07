
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
typedef int usercmd_t ;
typedef int cmd ;
struct TYPE_9__ {scalar_t__* viewangles; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_6__ {int (* issue_console_commands ) (int ) ;} ;
struct TYPE_7__ {int userdata; TYPE_1__ hooks; } ;
typedef TYPE_2__ DeepmindContext ;


 int CL_AdjustAngles () ;
 int CL_CmdButtons (int *) ;
 int CL_FinishMove (scalar_t__*,int *) ;
 int CL_JoystickMove (int *) ;
 int CL_KeyMove (int *) ;
 int CL_MouseMove (int *) ;
 int Com_Memset (int *,int ,int) ;
 size_t PITCH ;
 int SCR_DebugGraph (int ) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 size_t YAW ;
 TYPE_5__ cl ;
 TYPE_4__* cl_debugMove ;
 TYPE_2__* dmlab_context () ;
 int fabs (scalar_t__) ;
 int stub1 (int ) ;

usercmd_t CL_CreateCmd( void ) {
 usercmd_t cmd;
 vec3_t oldAngles;
 DeepmindContext* ctx = dmlab_context();

 VectorCopy( cl.viewangles, oldAngles );


 CL_AdjustAngles ();

 Com_Memset( &cmd, 0, sizeof( cmd ) );

 CL_CmdButtons( &cmd );


 CL_KeyMove( &cmd );


 CL_MouseMove( &cmd );


 CL_JoystickMove( &cmd );


 CL_FinishMove( oldAngles, &cmd );

 ctx->hooks.issue_console_commands( ctx->userdata );


 if ( cl_debugMove->integer ) {
  if ( cl_debugMove->integer == 1 ) {
   SCR_DebugGraph( fabs(cl.viewangles[YAW] - oldAngles[YAW]) );
  }
  if ( cl_debugMove->integer == 2 ) {
   SCR_DebugGraph( fabs(cl.viewangles[PITCH] - oldAngles[PITCH]) );
  }
 }

 return cmd;
}
