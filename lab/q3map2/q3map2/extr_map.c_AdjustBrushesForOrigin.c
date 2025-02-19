
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
struct TYPE_12__ {size_t planenum; } ;
typedef TYPE_3__ side_t ;
struct TYPE_11__ {int width; int height; TYPE_1__* verts; } ;
struct TYPE_13__ {TYPE_2__ mesh; struct TYPE_13__* next; } ;
typedef TYPE_4__ parseMesh_t ;
struct TYPE_14__ {int origin; TYPE_4__* patches; TYPE_6__* brushes; } ;
typedef TYPE_5__ entity_t ;
struct TYPE_15__ {int numsides; TYPE_3__* sides; struct TYPE_15__* next; } ;
typedef TYPE_6__ brush_t ;
struct TYPE_16__ {int normal; scalar_t__ dist; } ;
struct TYPE_10__ {int xyz; } ;


 int CreateBrushWindings (TYPE_6__*) ;
 scalar_t__ DotProduct (int ,int ) ;
 size_t FindFloatPlane (int ,scalar_t__,int ,int *) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_7__* mapplanes ;

void AdjustBrushesForOrigin( entity_t *ent ){

 int i;
 side_t *s;
 vec_t newdist;
 brush_t *b;
 parseMesh_t *p;



 for ( b = ent->brushes; b != ((void*)0); b = b->next )
 {

  for ( i = 0; i < b->numsides; i++ )
  {

   s = &b->sides[ i ];


   newdist = mapplanes[ s->planenum ].dist - DotProduct( mapplanes[ s->planenum ].normal, ent->origin );


   s->planenum = FindFloatPlane( mapplanes[ s->planenum ].normal, newdist, 0, ((void*)0) );
  }


  CreateBrushWindings( b );
 }


 for ( p = ent->patches; p != ((void*)0); p = p->next )
 {
  for ( i = 0; i < ( p->mesh.width * p->mesh.height ); i++ )
   VectorSubtract( p->mesh.verts[ i ].xyz, ent->origin, p->mesh.verts[ i ].xyz );
 }
}
