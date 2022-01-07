
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* shader; double* color; TYPE_1__* shaderImage; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_8__ {char* shader; } ;
typedef TYPE_3__ bspShader_t ;
struct TYPE_6__ {char* filename; } ;
typedef int FILE ;


 int SYS_WRN ;
 TYPE_2__* ShaderInfoForShader (char*) ;
 int Sys_FPrintf (int ,char*) ;
 int fprintf (int *,char*,...) ;
 int sprintf (char*,char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void ConvertShader( FILE *f, bspShader_t *shader, int shaderNum ){
 shaderInfo_t *si;
 char *c, filename[ 1024 ];



 si = ShaderInfoForShader( shader->shader );
 if ( si == ((void*)0) ) {
  Sys_FPrintf( SYS_WRN, "WARNING: NULL shader in BSP\n" );
  return;
 }


 if ( si->shaderImage->filename[ 0 ] != '*' ) {
  strcpy( filename, si->shaderImage->filename );
 }
 else{
  sprintf( filename, "%s.tga", si->shader );
 }
 for ( c = filename; *c != '\0'; c++ )
  if ( *c == '/' ) {
   *c = '\\';
  }


 fprintf( f, "\t*MATERIAL\t%d\t{\r\n", shaderNum );
 fprintf( f, "\t\t*MATERIAL_NAME\t\"%s\"\r\n", shader->shader );
 fprintf( f, "\t\t*MATERIAL_CLASS\t\"Standard\"\r\n" );
 fprintf( f, "\t\t*MATERIAL_DIFFUSE\t%f\t%f\t%f\r\n", si->color[ 0 ], si->color[ 1 ], si->color[ 2 ] );
 fprintf( f, "\t\t*MATERIAL_SHADING Phong\r\n" );


 fprintf( f, "\t\t*MAP_DIFFUSE\t{\r\n" );
 fprintf( f, "\t\t\t*MAP_NAME\t\"%s\"\r\n", shader->shader );
 fprintf( f, "\t\t\t*MAP_CLASS\t\"Bitmap\"\r\n" );
 fprintf( f, "\t\t\t*MAP_SUBNO\t1\r\n" );
 fprintf( f, "\t\t\t*MAP_AMOUNT\t1.0\r\n" );
 fprintf( f, "\t\t\t*MAP_TYPE\tScreen\r\n" );
 fprintf( f, "\t\t\t*BITMAP\t\"..\\%s\"\r\n", filename );
 fprintf( f, "\t\t\t*BITMAP_FILTER\tPyramidal\r\n" );
 fprintf( f, "\t\t}\r\n" );

 fprintf( f, "\t}\r\n" );
}
