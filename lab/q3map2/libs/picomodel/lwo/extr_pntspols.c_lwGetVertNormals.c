
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int count; TYPE_4__* pol; } ;
typedef TYPE_5__ lwPolygonList ;
struct TYPE_14__ {TYPE_1__* pt; } ;
typedef TYPE_6__ lwPointList ;
struct TYPE_12__ {int nverts; scalar_t__ smoothgrp; TYPE_3__* v; scalar_t__* norm; TYPE_2__* surf; } ;
struct TYPE_11__ {int index; scalar_t__* norm; } ;
struct TYPE_10__ {float smooth; } ;
struct TYPE_9__ {int npols; int* pol; } ;


 int normalize (scalar_t__*) ;
 float vecangle (scalar_t__*,scalar_t__*) ;

void lwGetVertNormals( lwPointList *point, lwPolygonList *polygon ){
 int j, k, n, g, h, p;
 float a;

 for ( j = 0; j < polygon->count; j++ ) {
  for ( n = 0; n < polygon->pol[ j ].nverts; n++ ) {
   for ( k = 0; k < 3; k++ )
    polygon->pol[ j ].v[ n ].norm[ k ] = polygon->pol[ j ].norm[ k ];

   if ( polygon->pol[ j ].surf->smooth <= 0 ) {
    continue;
   }

   p = polygon->pol[ j ].v[ n ].index;

   for ( g = 0; g < point->pt[ p ].npols; g++ ) {
    h = point->pt[ p ].pol[ g ];
    if ( h == j ) {
     continue;
    }

    if ( polygon->pol[ j ].smoothgrp != polygon->pol[ h ].smoothgrp ) {
     continue;
    }
    a = vecangle( polygon->pol[ j ].norm, polygon->pol[ h ].norm );
    if ( a > polygon->pol[ j ].surf->smooth ) {
     continue;
    }

    for ( k = 0; k < 3; k++ )
     polygon->pol[ j ].v[ n ].norm[ k ] += polygon->pol[ h ].norm[ k ];
   }

   normalize( polygon->pol[ j ].v[ n ].norm );
  }
 }
}
