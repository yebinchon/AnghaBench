
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shader; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_4__ {TYPE_1__* si; } ;


 int strcmp (int ,int ) ;
 TYPE_2__* surfaceInfos ;

__attribute__((used)) static int CompareLightSurface( const void *a, const void *b ){
 shaderInfo_t *asi, *bsi;



 asi = surfaceInfos[ *( (int*) a ) ].si;
 bsi = surfaceInfos[ *( (int*) b ) ].si;


 if ( asi == ((void*)0) ) {
  return -1;
 }
 if ( bsi == ((void*)0) ) {
  return 1;
 }


 return strcmp( asi->shader, bsi->shader );
}
