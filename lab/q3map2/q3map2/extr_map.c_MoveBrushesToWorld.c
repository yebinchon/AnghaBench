
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ parseMesh_t ;
struct TYPE_7__ {TYPE_1__* patches; TYPE_3__* colorModBrushes; TYPE_3__* brushes; } ;
typedef TYPE_2__ entity_t ;
struct TYPE_8__ {struct TYPE_8__* nextColorModBrush; struct TYPE_8__* next; scalar_t__ opaque; } ;
typedef TYPE_3__ brush_t ;
struct TYPE_9__ {TYPE_1__* patches; TYPE_3__* colorModBrushes; TYPE_3__* lastBrush; TYPE_3__* brushes; } ;


 TYPE_4__* entities ;

void MoveBrushesToWorld( entity_t *ent ){
 brush_t *b, *next;
 parseMesh_t *pm;



 for ( b = ent->brushes; b != ((void*)0); b = next )
 {

  next = b->next;


  if ( b->opaque || entities[ 0 ].lastBrush == ((void*)0) ) {
   b->next = entities[ 0 ].brushes;
   entities[ 0 ].brushes = b;
   if ( entities[ 0 ].lastBrush == ((void*)0) ) {
    entities[ 0 ].lastBrush = b;
   }
  }
  else
  {
   b->next = ((void*)0);
   entities[ 0 ].lastBrush->next = b;
   entities[ 0 ].lastBrush = b;
  }
 }
 ent->brushes = ((void*)0);


 if ( ent->colorModBrushes != ((void*)0) ) {
  for ( b = ent->colorModBrushes; b->nextColorModBrush != ((void*)0); b = b->nextColorModBrush ) ;

  b->nextColorModBrush = entities[ 0 ].colorModBrushes;
  entities[ 0 ].colorModBrushes = ent->colorModBrushes;

  ent->colorModBrushes = ((void*)0);
 }


 if ( ent->patches != ((void*)0) ) {
  for ( pm = ent->patches; pm->next != ((void*)0); pm = pm->next ) ;

  pm->next = entities[ 0 ].patches;
  entities[ 0 ].patches = ent->patches;

  ent->patches = ((void*)0);
 }
}
