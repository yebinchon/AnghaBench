
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec_t ;
typedef int* vec3_t ;
struct TYPE_7__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_2__ brush_t ;
struct TYPE_6__ {void* planenum; } ;


 TYPE_2__* AllocBrush (int) ;
 int CreateBrushWindings (TYPE_2__*) ;
 void* FindFloatPlane (int*,int,int,int**) ;
 int VectorClear (int*) ;

brush_t *BrushFromBounds( vec3_t mins, vec3_t maxs ){
 brush_t *b;
 int i;
 vec3_t normal;
 vec_t dist;

 b = AllocBrush( 6 );
 b->numsides = 6;
 for ( i = 0 ; i < 3 ; i++ )
 {
  VectorClear( normal );
  normal[i] = 1;
  dist = maxs[i];
  b->sides[i].planenum = FindFloatPlane( normal, dist, 1, (vec3_t*) &maxs );

  normal[i] = -1;
  dist = -mins[i];
  b->sides[3 + i].planenum = FindFloatPlane( normal, dist, 1, (vec3_t*) &mins );
 }

 CreateBrushWindings( b );

 return b;
}
