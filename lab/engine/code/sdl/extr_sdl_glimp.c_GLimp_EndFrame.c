
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {int string; } ;
struct TYPE_5__ {void* modified; scalar_t__ integer; } ;
struct TYPE_4__ {int (* IN_Restart ) () ;int (* Cmd_ExecuteText ) (int ,char*) ;int (* Cvar_Set ) (char*,char*) ;int (* Printf ) (int ,char*) ;scalar_t__ (* Cvar_VariableIntegerValue ) (char*) ;} ;


 int EXEC_APPEND ;
 int PRINT_ALL ;
 scalar_t__ Q_stricmp (int ,char*) ;
 int SDL_GL_SwapWindow (int ) ;
 int SDL_GetWindowFlags (int ) ;
 scalar_t__ SDL_SetWindowFullscreen (int ,scalar_t__) ;
 int SDL_WINDOW_FULLSCREEN ;
 int SDL_window ;
 void* qfalse ;
 TYPE_3__* r_drawBuffer ;
 TYPE_2__* r_fullscreen ;
 TYPE_1__ ri ;
 scalar_t__ stub1 (char*) ;
 int stub2 (int ,char*) ;
 int stub3 (char*,char*) ;
 int stub4 (int ,char*) ;
 int stub5 () ;

void GLimp_EndFrame( void )
{

 if ( Q_stricmp( r_drawBuffer->string, "GL_FRONT" ) != 0 )
 {
  SDL_GL_SwapWindow( SDL_window );
 }

 if( r_fullscreen->modified )
 {
  int fullscreen;
  qboolean needToToggle;
  qboolean sdlToggled = qfalse;


  fullscreen = !!( SDL_GetWindowFlags( SDL_window ) & SDL_WINDOW_FULLSCREEN );

  if( r_fullscreen->integer && ri.Cvar_VariableIntegerValue( "in_nograb" ) )
  {
   ri.Printf( PRINT_ALL, "Fullscreen not allowed with in_nograb 1\n");
   ri.Cvar_Set( "r_fullscreen", "0" );
   r_fullscreen->modified = qfalse;
  }


  needToToggle = !!r_fullscreen->integer != fullscreen;

  if( needToToggle )
  {
   sdlToggled = SDL_SetWindowFullscreen( SDL_window, r_fullscreen->integer ) >= 0;


   if( !sdlToggled )
    ri.Cmd_ExecuteText(EXEC_APPEND, "vid_restart\n");

   ri.IN_Restart( );
  }

  r_fullscreen->modified = qfalse;
 }
}
