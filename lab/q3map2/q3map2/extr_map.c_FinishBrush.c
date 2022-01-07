
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_14__ {int entityNum; struct TYPE_14__* nextColorModBrush; TYPE_2__* contentShader; struct TYPE_14__* next; scalar_t__ opaque; struct TYPE_14__* original; int brushNum; } ;
typedef TYPE_3__ brush_t ;
struct TYPE_17__ {int compileFlags; int maxs; int mins; } ;
struct TYPE_16__ {int origin; } ;
struct TYPE_15__ {int mapEntityNum; TYPE_3__* colorModBrushes; TYPE_3__* lastBrush; TYPE_3__* brushes; } ;
struct TYPE_13__ {TYPE_1__* colorMod; } ;
struct TYPE_12__ {scalar_t__ type; } ;


 int AddBrushBevels () ;
 scalar_t__ CM_VOLUME ;
 int C_AREAPORTAL ;
 int C_ORIGIN ;
 TYPE_3__* CopyBrush (TYPE_6__*) ;
 int CreateBrushWindings (TYPE_6__*) ;
 int SetKeyValue (TYPE_5__*,char*,char*) ;
 int Sys_Printf (char*,int,int ) ;
 int VectorAdd (int ,int ,scalar_t__*) ;
 int VectorCopy (scalar_t__*,int ) ;
 int VectorScale (scalar_t__*,double,scalar_t__*) ;
 TYPE_6__* buildBrush ;
 TYPE_5__* entities ;
 int entitySourceBrushes ;
 TYPE_4__* mapEnt ;
 int numEntities ;
 int sprintf (char*,char*,int,int,int) ;

brush_t *FinishBrush( void ){
 brush_t *b;



 if ( !CreateBrushWindings( buildBrush ) ) {
  return ((void*)0);
 }



 if ( buildBrush->compileFlags & C_ORIGIN ) {
  char string[ 32 ];
  vec3_t origin;

  if ( numEntities == 1 ) {
   Sys_Printf( "Entity %i, Brush %i: origin brushes not allowed in world\n",
      mapEnt->mapEntityNum, entitySourceBrushes );
   return ((void*)0);
  }

  VectorAdd( buildBrush->mins, buildBrush->maxs, origin );
  VectorScale( origin, 0.5, origin );

  sprintf( string, "%i %i %i", (int) origin[ 0 ], (int) origin[ 1 ], (int) origin[ 2 ] );
  SetKeyValue( &entities[ numEntities - 1 ], "origin", string );

  VectorCopy( origin, entities[ numEntities - 1 ].origin );


  return ((void*)0);
 }


 if ( buildBrush->compileFlags & C_AREAPORTAL ) {
  if ( numEntities != 1 ) {
   Sys_Printf( "Entity %i, Brush %i: areaportals only allowed in world\n", numEntities - 1, entitySourceBrushes );
   return ((void*)0);
  }
 }


 AddBrushBevels();


 b = CopyBrush( buildBrush );


 b->entityNum = mapEnt->mapEntityNum;
 b->brushNum = entitySourceBrushes;


 b->original = b;


 if ( b->opaque || mapEnt->lastBrush == ((void*)0) ) {
  b->next = mapEnt->brushes;
  mapEnt->brushes = b;
  if ( mapEnt->lastBrush == ((void*)0) ) {
   mapEnt->lastBrush = b;
  }
 }
 else
 {
  b->next = ((void*)0);
  mapEnt->lastBrush->next = b;
  mapEnt->lastBrush = b;
 }


 if ( b->contentShader != ((void*)0) &&
   b->contentShader->colorMod != ((void*)0) &&
   b->contentShader->colorMod->type == CM_VOLUME ) {
  b->nextColorModBrush = mapEnt->colorModBrushes;
  mapEnt->colorModBrushes = b;
 }


 return b;
}
