
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_12__ {size_t planenum; TYPE_9__* winding; TYPE_8__* shaderInfo; } ;
typedef TYPE_1__ side_t ;
struct TYPE_13__ {int shader; } ;
typedef TYPE_2__ bspShader_t ;
typedef int bspPlane_t ;
struct TYPE_14__ {int numSides; int firstSide; } ;
typedef TYPE_3__ bspBrush_t ;
struct TYPE_15__ {size_t shaderNum; size_t planeNum; } ;
typedef TYPE_4__ bspBrushSide_t ;
struct TYPE_18__ {int * p; } ;
struct TYPE_17__ {char* shader; } ;
struct TYPE_16__ {int numsides; TYPE_1__* sides; } ;
typedef int FILE ;


 int CreateBrushWindings (TYPE_5__*) ;
 int FreeWinding (TYPE_9__*) ;
 int Q_stricmp (int ,char*) ;
 int Q_strncasecmp (char*,char*,int) ;
 TYPE_8__* ShaderInfoForShader (int ) ;
 int VectorAdd (int ,double*,double*) ;
 TYPE_4__* bspBrushSides ;
 int * bspPlanes ;
 TYPE_2__* bspShaders ;
 TYPE_5__* buildBrush ;
 int fprintf (int *,char*,...) ;
 size_t numBSPShaders ;

__attribute__((used)) static void ConvertBrush( FILE *f, int num, bspBrush_t *brush, vec3_t origin ){
 int i, j;
 bspBrushSide_t *side;
 side_t *buildSide;
 bspShader_t *shader;
 char *texture;
 bspPlane_t *plane;
 vec3_t pts[ 3 ];



 fprintf( f, "\t// brush %d\n", num );
 fprintf( f, "\t{\n" );


 for ( i = 0; i < buildBrush->numsides; i++ )
 {
  buildSide = &buildBrush->sides[ i ];
  if ( buildSide->winding != ((void*)0) ) {
   FreeWinding( buildSide->winding );
   buildSide->winding = ((void*)0);
  }
 }
 buildBrush->numsides = 0;


 for ( i = 0; i < brush->numSides; i++ )
 {

  side = &bspBrushSides[ brush->firstSide + i ];


  if ( side->shaderNum < 0 || side->shaderNum >= numBSPShaders ) {
   continue;
  }
  shader = &bspShaders[ side->shaderNum ];
  if ( !Q_stricmp( shader->shader, "default" ) || !Q_stricmp( shader->shader, "noshader" ) ) {
   continue;
  }


  plane = &bspPlanes[ side->planeNum ];


  buildSide = &buildBrush->sides[ buildBrush->numsides ];
  buildBrush->numsides++;


  buildSide->shaderInfo = ShaderInfoForShader( shader->shader );
  buildSide->planenum = side->planeNum;
  buildSide->winding = ((void*)0);
 }


 if ( !CreateBrushWindings( buildBrush ) ) {
  return;
 }


 for ( i = 0; i < buildBrush->numsides; i++ )
 {

  buildSide = &buildBrush->sides[ i ];


  if ( buildSide->shaderInfo == ((void*)0) || buildSide->winding == ((void*)0) ) {
   continue;
  }


  if ( !Q_strncasecmp( buildSide->shaderInfo->shader, "textures/", 9 ) ) {
   texture = buildSide->shaderInfo->shader + 9;
  }
  else{
   texture = buildSide->shaderInfo->shader;
  }


  for ( j = 0; j < 3; j++ )
  {
   VectorAdd( buildSide->winding->p[ j ], origin, pts[ j ] );



  }



  fprintf( f, "\t\t( %.3f %.3f %.3f ) ( %.3f %.3f %.3f ) ( %.3f %.3f %.3f ) %s 0 0 0 0.5 0.5 0 0 0\n",
     pts[ 0 ][ 0 ], pts[ 0 ][ 1 ], pts[ 0 ][ 2 ],
     pts[ 1 ][ 0 ], pts[ 1 ][ 1 ], pts[ 1 ][ 2 ],
     pts[ 2 ][ 0 ], pts[ 2 ][ 1 ], pts[ 2 ][ 2 ],
     texture );
 }


 fprintf( f, "\t}\n\n" );
}
