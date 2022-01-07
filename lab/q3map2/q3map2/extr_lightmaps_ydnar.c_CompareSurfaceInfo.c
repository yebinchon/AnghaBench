
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ model; scalar_t__ hasLightmap; scalar_t__ sampleSize; scalar_t__* axis; scalar_t__* plane; scalar_t__* mins; } ;
typedef TYPE_1__ surfaceInfo_t ;


 TYPE_1__* surfaceInfos ;

__attribute__((used)) static int CompareSurfaceInfo( const void *a, const void *b ){
 surfaceInfo_t *aInfo, *bInfo;
 int i;



 aInfo = &surfaceInfos[ *( (int*) a ) ];
 bInfo = &surfaceInfos[ *( (int*) b ) ];


 if ( aInfo->model < bInfo->model ) {
  return 1;
 }
 else if ( aInfo->model > bInfo->model ) {
  return -1;
 }


 if ( aInfo->hasLightmap < bInfo->hasLightmap ) {
  return 1;
 }
 else if ( aInfo->hasLightmap > bInfo->hasLightmap ) {
  return -1;
 }


 if ( aInfo->sampleSize < bInfo->sampleSize ) {
  return 1;
 }
 else if ( aInfo->sampleSize > bInfo->sampleSize ) {
  return -1;
 }


 for ( i = 0; i < 3; i++ )
 {
  if ( aInfo->axis[ i ] < bInfo->axis[ i ] ) {
   return 1;
  }
  else if ( aInfo->axis[ i ] > bInfo->axis[ i ] ) {
   return -1;
  }
 }


 if ( aInfo->plane == ((void*)0) && bInfo->plane != ((void*)0) ) {
  return 1;
 }
 else if ( aInfo->plane != ((void*)0) && bInfo->plane == ((void*)0) ) {
  return -1;
 }
 else if ( aInfo->plane != ((void*)0) && bInfo->plane != ((void*)0) ) {
  for ( i = 0; i < 4; i++ )
  {
   if ( aInfo->plane[ i ] < bInfo->plane[ i ] ) {
    return 1;
   }
   else if ( aInfo->plane[ i ] > bInfo->plane[ i ] ) {
    return -1;
   }
  }
 }


 for ( i = 0; i < 3; i++ )
 {
  if ( aInfo->mins[ i ] < bInfo->mins[ i ] ) {
   return 1;
  }
  else if ( aInfo->mins[ i ] > bInfo->mins[ i ] ) {
   return -1;
  }
 }


 return 0;
}
