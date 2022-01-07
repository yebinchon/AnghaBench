
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int brushNum; int visibleSide; int shader; } ;
struct TYPE_9__ {int visibleSide; TYPE_3__* brush; TYPE_1__* si; } ;
struct TYPE_8__ {int outputNum; TYPE_2__* sides; } ;
struct TYPE_7__ {int * visibleHull; } ;
struct TYPE_6__ {int shader; } ;


 int Sys_Printf (char*,int,int) ;
 TYPE_5__* bspFogs ;
 TYPE_4__* mapFogs ;
 int numBSPFogs ;
 int numMapFogs ;
 int strcpy (int ,int ) ;

void EmitFogs( void ){
 int i, j;



 numBSPFogs = numMapFogs;


 for ( i = 0; i < numMapFogs; i++ )
 {

  strcpy( bspFogs[ i ].shader, mapFogs[ i ].si->shader );


  if ( mapFogs[ i ].brush == ((void*)0) ) {
   bspFogs[ i ].brushNum = -1;
   bspFogs[ i ].visibleSide = -1;
  }
  else
  {

   bspFogs[ i ].brushNum = mapFogs[ i ].brush->outputNum;


   if ( mapFogs[ i ].visibleSide >= 0 ) {
    bspFogs[ i ].visibleSide = mapFogs[ i ].visibleSide;
    continue;
   }


   for ( j = 0; j < 6; j++ )
   {
    if ( mapFogs[ i ].brush->sides[ j ].visibleHull != ((void*)0) ) {
     Sys_Printf( "Fog %d has visible side %d\n", i, j );
     bspFogs[ i ].visibleSide = j;
     break;
    }
   }
  }
 }
}
