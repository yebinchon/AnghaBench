
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ stereoEnabled; } ;
struct TYPE_10__ {TYPE_1__ glconfig; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {scalar_t__ integer; } ;
struct TYPE_7__ {int (* EndFrame ) (int *,int *) ;} ;


 int Com_Error (int ,char*) ;
 int Cvar_VariableIntegerValue (char*) ;
 int ERR_FATAL ;
 int SCR_DrawScreenField (int ,int ,int ) ;
 int STEREO_CENTER ;
 int STEREO_LEFT ;
 int STEREO_RIGHT ;
 TYPE_5__ cls ;
 TYPE_4__* com_dedicated ;
 TYPE_3__* com_speeds ;
 TYPE_2__ re ;
 int renderOrigin ;
 int scr_initialized ;
 int skipRendering ;
 int stub1 (int *,int *) ;
 int stub2 (int *,int *) ;
 int time_backend ;
 int time_frontend ;
 scalar_t__ uivm ;

void SCR_UpdateScreen( void ) {
 static int recursive;

 if ( !scr_initialized ) {
  return;
 }

 if ( ++recursive > 2 ) {
  Com_Error( ERR_FATAL, "SCR_UpdateScreen: recursively called" );
 }
 recursive = 1;



 if( uivm || com_dedicated->integer )
 {

  int in_anaglyphMode = Cvar_VariableIntegerValue("r_anaglyphMode");

  if ( cls.glconfig.stereoEnabled || in_anaglyphMode) {
   SCR_DrawScreenField( STEREO_LEFT, renderOrigin, skipRendering );
   SCR_DrawScreenField( STEREO_RIGHT, renderOrigin, skipRendering );
  } else {
   SCR_DrawScreenField( STEREO_CENTER, renderOrigin, skipRendering );
  }

  if ( !skipRendering ) {
   if ( com_speeds->integer ) {
    re.EndFrame( &time_frontend, &time_backend );
   } else {
    re.EndFrame( ((void*)0), ((void*)0) );
   }
  }
 }

 recursive = 0;
}
