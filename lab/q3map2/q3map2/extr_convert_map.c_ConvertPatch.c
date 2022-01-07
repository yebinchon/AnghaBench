
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_7__ {char* shader; } ;
typedef TYPE_1__ bspShader_t ;
struct TYPE_8__ {double* st; int xyz; } ;
typedef TYPE_2__ bspDrawVert_t ;
struct TYPE_9__ {scalar_t__ surfaceType; size_t shaderNum; int patchWidth; int patchHeight; int firstVert; } ;
typedef TYPE_3__ bspDrawSurface_t ;
typedef int FILE ;


 scalar_t__ MST_PATCH ;
 int Q_strncasecmp (char*,char*,int) ;
 int VectorAdd (double*,int ,double*) ;
 TYPE_2__* bspDrawVerts ;
 TYPE_1__* bspShaders ;
 int fprintf (int *,char*,...) ;
 size_t numBSPShaders ;

__attribute__((used)) static void ConvertPatch( FILE *f, int num, bspDrawSurface_t *ds, vec3_t origin ){
 int x, y;
 bspShader_t *shader;
 char *texture;
 bspDrawVert_t *dv;
 vec3_t xyz;



 if ( ds->surfaceType != MST_PATCH ) {
  return;
 }


 if ( ds->shaderNum < 0 || ds->shaderNum >= numBSPShaders ) {
  return;
 }
 shader = &bspShaders[ ds->shaderNum ];


 if ( !Q_strncasecmp( shader->shader, "textures/", 9 ) ) {
  texture = shader->shader + 9;
 }
 else{
  texture = shader->shader;
 }


 fprintf( f, "\t// patch %d\n", num );
 fprintf( f, "\t{\n" );
 fprintf( f, "\t\tpatchDef2\n" );
 fprintf( f, "\t\t{\n" );
 fprintf( f, "\t\t\t%s\n", texture );
 fprintf( f, "\t\t\t( %d %d 0 0 0 )\n", ds->patchWidth, ds->patchHeight );
 fprintf( f, "\t\t\t(\n" );


 for ( x = 0; x < ds->patchWidth; x++ )
 {

  fprintf( f, "\t\t\t\t(" );


  for ( y = 0; y < ds->patchHeight; y++ )
  {

   dv = &bspDrawVerts[ ds->firstVert + ( y * ds->patchWidth ) + x ];


   VectorAdd( origin, dv->xyz, xyz );


   fprintf( f, " ( %f %f %f %f %f )", xyz[ 0 ], xyz[ 1 ], xyz[ 2 ], dv->st[ 0 ], dv->st[ 1 ] );
  }


  fprintf( f, " )\n" );
 }


 fprintf( f, "\t\t\t)\n" );
 fprintf( f, "\t\t}\n" );
 fprintf( f, "\t}\n\n" );
}
