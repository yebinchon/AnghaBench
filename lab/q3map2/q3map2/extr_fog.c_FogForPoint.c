
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
typedef scalar_t__ qboolean ;
struct TYPE_7__ {scalar_t__ dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_8__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_3__ brush_t ;
struct TYPE_9__ {TYPE_3__* brush; } ;
struct TYPE_6__ {size_t planenum; } ;


 float DotProduct (int ,int ) ;
 int defaultFogNum ;
 TYPE_5__* mapFogs ;
 TYPE_2__* mapplanes ;
 int numMapFogs ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

int FogForPoint( vec3_t point, float epsilon ){
 int fogNum, i, j;
 float dot;
 qboolean inside;
 brush_t *brush;
 plane_t *plane;



 fogNum = defaultFogNum;


 for ( i = 0; i < numMapFogs; i++ )
 {

  if ( mapFogs[ i ].brush == ((void*)0) ) {
   fogNum = i;
   continue;
  }


  brush = mapFogs[ i ].brush;


  inside = qtrue;
  for ( j = 0; j < brush->numsides && inside; j++ )
  {
   plane = &mapplanes[ brush->sides[ j ].planenum ];
   dot = DotProduct( point, plane->normal );
   dot -= plane->dist;
   if ( dot > epsilon ) {
    inside = qfalse;
   }
  }


  if ( inside ) {

   return i;
  }
 }


 return fogNum;
}
