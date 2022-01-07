
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_10__ {int width; int height; TYPE_1__* verts; } ;
struct TYPE_11__ {int eMaxs; int eMins; struct TYPE_11__* next; TYPE_2__ mesh; } ;
typedef TYPE_3__ parseMesh_t ;
struct TYPE_12__ {TYPE_3__* patches; TYPE_5__* brushes; } ;
typedef TYPE_4__ entity_t ;
struct TYPE_13__ {int eMaxs; int eMins; struct TYPE_13__* next; int maxs; int mins; } ;
typedef TYPE_5__ brush_t ;
struct TYPE_9__ {int xyz; } ;


 int AddPointToBounds (int ,int ,int ) ;
 int ClearBounds (int ,int ) ;
 int GetVectorForKey (TYPE_4__*,char*,int ) ;
 char* ValueForKey (TYPE_4__*,char*) ;
 int VectorCopy (int ,int ) ;

void SetEntityBounds( entity_t *e ){
 int i;
 brush_t *b;
 parseMesh_t *p;
 vec3_t mins, maxs;
 const char *value;





 ClearBounds( mins, maxs );
 for ( b = e->brushes; b; b = b->next )
 {
  AddPointToBounds( b->mins, mins, maxs );
  AddPointToBounds( b->maxs, mins, maxs );
 }
 for ( p = e->patches; p; p = p->next )
 {
  for ( i = 0; i < ( p->mesh.width * p->mesh.height ); i++ )
   AddPointToBounds( p->mesh.verts[ i ].xyz, mins, maxs );
 }


 value = ValueForKey( e, "min" );
 if ( value[ 0 ] != '\0' ) {
  GetVectorForKey( e, "min", mins );
 }
 value = ValueForKey( e, "max" );
 if ( value[ 0 ] != '\0' ) {
  GetVectorForKey( e, "max", maxs );
 }


 for ( b = e->brushes; b; b = b->next )
 {
  VectorCopy( mins, b->eMins );
  VectorCopy( maxs, b->eMaxs );
 }
 for ( p = e->patches; p; p = p->next )
 {
  VectorCopy( mins, p->eMins );
  VectorCopy( maxs, p->eMaxs );
 }
}
