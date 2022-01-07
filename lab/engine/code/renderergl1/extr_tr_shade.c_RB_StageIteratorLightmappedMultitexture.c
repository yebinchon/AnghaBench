
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sort; scalar_t__ fogPass; int cullType; int name; } ;
typedef TYPE_2__ shader_t ;
struct TYPE_9__ {TYPE_2__* shader; scalar_t__ fogNum; scalar_t__ dlightBits; int indexes; int numIndexes; int numVertexes; int ** texCoords; TYPE_1__** xstages; int constantColor255; int xyz; } ;
typedef TYPE_3__ shaderCommands_t ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_7__ {int * bundle; } ;


 int GLS_DEFAULT ;
 int GL_COLOR_ARRAY ;
 int GL_Cull (int ) ;
 int GL_FLAT ;
 int GL_FLOAT ;
 int GL_MODULATE ;
 int GL_REPLACE ;
 int GL_SMOOTH ;
 int GL_SelectTexture (int) ;
 int GL_State (int ) ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_COORD_ARRAY ;
 int GL_TexEnv (int ) ;
 int GL_UNSIGNED_BYTE ;
 int GLimp_LogComment (char*) ;
 int ProjectDlightTexture () ;
 int RB_FogPass () ;
 int R_BindAnimatedImage (int *) ;
 int R_DrawElements (int ,int ) ;
 scalar_t__ SS_OPAQUE ;
 int qglColor3f (int,int,int) ;
 int qglColorPointer (int,int ,int ,int ) ;
 int qglDisable (int ) ;
 int qglDisableClientState (int ) ;
 int qglEnable (int ) ;
 int qglEnableClientState (int ) ;
 int qglLockArraysEXT (int ,int ) ;
 int qglShadeModel (int ) ;
 int qglTexCoordPointer (int,int ,int,int ) ;
 int qglUnlockArraysEXT () ;
 int qglVertexPointer (int,int ,int,int ) ;
 TYPE_6__* r_lightmap ;
 TYPE_5__* r_logFile ;
 TYPE_3__ tess ;
 char* va (char*,int ) ;

void RB_StageIteratorLightmappedMultitexture( void ) {
 shaderCommands_t *input;
 shader_t *shader;

 input = &tess;
 shader = input->shader;




 if ( r_logFile->integer ) {


  GLimp_LogComment( va("--- RB_StageIteratorLightmappedMultitexture( %s ) ---\n", tess.shader->name) );
 }




 GL_Cull( shader->cullType );




 GL_State( GLS_DEFAULT );
 qglVertexPointer( 3, GL_FLOAT, 16, input->xyz );






 qglEnableClientState( GL_COLOR_ARRAY );
 qglColorPointer( 4, GL_UNSIGNED_BYTE, 0, tess.constantColor255 );





 GL_SelectTexture( 0 );

 qglEnableClientState( GL_TEXTURE_COORD_ARRAY );
 R_BindAnimatedImage( &tess.xstages[0]->bundle[0] );
 qglTexCoordPointer( 2, GL_FLOAT, 16, tess.texCoords[0][0] );




 GL_SelectTexture( 1 );
 qglEnable( GL_TEXTURE_2D );
 if ( r_lightmap->integer ) {
  GL_TexEnv( GL_REPLACE );
 } else {
  GL_TexEnv( GL_MODULATE );
 }
 R_BindAnimatedImage( &tess.xstages[0]->bundle[1] );
 qglEnableClientState( GL_TEXTURE_COORD_ARRAY );
 qglTexCoordPointer( 2, GL_FLOAT, 16, tess.texCoords[0][1] );




 if ( qglLockArraysEXT ) {
  qglLockArraysEXT(0, input->numVertexes);
  GLimp_LogComment( "glLockArraysEXT\n" );
 }

 R_DrawElements( input->numIndexes, input->indexes );




 qglDisable( GL_TEXTURE_2D );
 qglDisableClientState( GL_TEXTURE_COORD_ARRAY );

 GL_SelectTexture( 0 );
 if ( tess.dlightBits && tess.shader->sort <= SS_OPAQUE ) {
  ProjectDlightTexture();
 }




 if ( tess.fogNum && tess.shader->fogPass ) {
  RB_FogPass();
 }




 if ( qglUnlockArraysEXT ) {
  qglUnlockArraysEXT();
  GLimp_LogComment( "glUnlockArraysEXT\n" );
 }
}
