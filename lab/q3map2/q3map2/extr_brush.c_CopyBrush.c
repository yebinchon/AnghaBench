
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int numsides; TYPE_1__* sides; int * next; } ;
typedef TYPE_2__ brush_t ;
struct TYPE_8__ {int * winding; } ;


 TYPE_2__* AllocBrush (int) ;
 int * CopyWinding (int *) ;
 int memcpy (TYPE_2__*,TYPE_2__*,size_t) ;

brush_t *CopyBrush( brush_t *brush ){
 brush_t *newBrush;
 size_t size;
 int i;



 size = sizeof( *brush ) + sizeof( *brush->sides ) * brush->numsides;
 newBrush = AllocBrush( brush->numsides );
 memcpy( newBrush, brush, size );


 newBrush->next = ((void*)0);


 for ( i = 0; i < brush->numsides; i++ )
 {
  if ( brush->sides[ i ].winding != ((void*)0) ) {
   newBrush->sides[ i ].winding = CopyWinding( brush->sides[ i ].winding );
  }
 }


 return newBrush;
}
