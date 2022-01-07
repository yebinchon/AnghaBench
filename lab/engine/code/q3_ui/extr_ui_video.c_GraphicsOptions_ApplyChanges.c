
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int w ;
typedef int h ;
struct TYPE_20__ {scalar_t__ curvalue; } ;
struct TYPE_19__ {int curvalue; } ;
struct TYPE_18__ {int curvalue; } ;
struct TYPE_17__ {int curvalue; } ;
struct TYPE_16__ {int curvalue; } ;
struct TYPE_15__ {int curvalue; } ;
struct TYPE_14__ {int curvalue; } ;
struct TYPE_13__ {int curvalue; } ;
struct TYPE_12__ {int curvalue; } ;
struct TYPE_11__ {TYPE_9__ filter; TYPE_8__ geometry; TYPE_7__ lighting; TYPE_6__ colordepth; TYPE_5__ fs; TYPE_4__ mode; TYPE_3__ allow_extensions; TYPE_2__ tq; TYPE_1__ texturebits; } ;


 int ARRAY_LEN (char**) ;
 int EXEC_APPEND ;
 int GraphicsOptions_FindBuiltinResolution (int) ;
 int QM_ACTIVATED ;
 int Q_strncpyz (char*,char*,int) ;
 char** detectedResolutions ;
 scalar_t__ resolutionsDetected ;
 TYPE_10__ s_graphicsoptions ;
 char* strchr (char*,char) ;
 int trap_Cmd_ExecuteText (int ,char*) ;
 int trap_Cvar_Reset (char*) ;
 int trap_Cvar_Set (char*,char*) ;
 int trap_Cvar_SetValue (char*,int) ;

__attribute__((used)) static void GraphicsOptions_ApplyChanges( void *unused, int notification )
{
 if (notification != QM_ACTIVATED)
  return;

 switch ( s_graphicsoptions.texturebits.curvalue )
 {
 case 0:
  trap_Cvar_SetValue( "r_texturebits", 0 );
  break;
 case 1:
  trap_Cvar_SetValue( "r_texturebits", 16 );
  break;
 case 2:
  trap_Cvar_SetValue( "r_texturebits", 32 );
  break;
 }
 trap_Cvar_SetValue( "r_picmip", 3 - s_graphicsoptions.tq.curvalue );
 trap_Cvar_SetValue( "r_allowExtensions", s_graphicsoptions.allow_extensions.curvalue );

 if( resolutionsDetected )
 {

  int mode;
  if ( s_graphicsoptions.mode.curvalue == -1
   || s_graphicsoptions.mode.curvalue >= ARRAY_LEN( detectedResolutions ) )
   s_graphicsoptions.mode.curvalue = 0;

  mode = GraphicsOptions_FindBuiltinResolution( s_graphicsoptions.mode.curvalue );
  if( mode == -1 )
  {
   char w[ 16 ], h[ 16 ];
   Q_strncpyz( w, detectedResolutions[ s_graphicsoptions.mode.curvalue ], sizeof( w ) );
   *strchr( w, 'x' ) = 0;
   Q_strncpyz( h,
     strchr( detectedResolutions[ s_graphicsoptions.mode.curvalue ], 'x' ) + 1, sizeof( h ) );
   trap_Cvar_Set( "r_customwidth", w );
   trap_Cvar_Set( "r_customheight", h );
  }

  trap_Cvar_SetValue( "r_mode", mode );
 }
 else
  trap_Cvar_SetValue( "r_mode", s_graphicsoptions.mode.curvalue );

 trap_Cvar_SetValue( "r_fullscreen", s_graphicsoptions.fs.curvalue );
 switch ( s_graphicsoptions.colordepth.curvalue )
 {
 case 0:
  trap_Cvar_SetValue( "r_colorbits", 0 );
  trap_Cvar_SetValue( "r_depthbits", 0 );
  trap_Cvar_Reset( "r_stencilbits" );
  break;
 case 1:
  trap_Cvar_SetValue( "r_colorbits", 16 );
  trap_Cvar_SetValue( "r_depthbits", 16 );
  trap_Cvar_SetValue( "r_stencilbits", 0 );
  break;
 case 2:
  trap_Cvar_SetValue( "r_colorbits", 32 );
  trap_Cvar_SetValue( "r_depthbits", 24 );
  trap_Cvar_SetValue( "r_stencilbits", 8 );
  break;
 }
 trap_Cvar_SetValue( "r_vertexLight", s_graphicsoptions.lighting.curvalue );

 if ( s_graphicsoptions.geometry.curvalue == 2 )
 {
  trap_Cvar_SetValue( "r_lodBias", 0 );
  trap_Cvar_SetValue( "r_subdivisions", 4 );
 }
 else if ( s_graphicsoptions.geometry.curvalue == 1 )
 {
  trap_Cvar_SetValue( "r_lodBias", 1 );
  trap_Cvar_SetValue( "r_subdivisions", 12 );
 }
 else
 {
  trap_Cvar_SetValue( "r_lodBias", 1 );
  trap_Cvar_SetValue( "r_subdivisions", 20 );
 }

 if ( s_graphicsoptions.filter.curvalue )
 {
  trap_Cvar_Set( "r_textureMode", "GL_LINEAR_MIPMAP_LINEAR" );
 }
 else
 {
  trap_Cvar_Set( "r_textureMode", "GL_LINEAR_MIPMAP_NEAREST" );
 }

 trap_Cmd_ExecuteText( EXEC_APPEND, "vid_restart\n" );
}
