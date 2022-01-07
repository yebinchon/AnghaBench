
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int brush_t ;
struct TYPE_4__ {int* portalareas; int compileFlags; int brushNum; scalar_t__ entityNum; } ;


 int C_DETAIL ;
 int C_HINT ;
 int C_LIQUID ;
 int * FinishBrush () ;
 int ParseRawBrush (scalar_t__) ;
 int RemoveDuplicateBrushPlanes (TYPE_1__*) ;
 int SetBrushContents (TYPE_1__*) ;
 TYPE_1__* buildBrush ;
 int entitySourceBrushes ;
 scalar_t__ noHint ;
 scalar_t__ nodetail ;
 scalar_t__ nowater ;
 scalar_t__ numMapEntities ;

__attribute__((used)) static void ParseBrush( qboolean onlyLights ){
 brush_t *b;



 ParseRawBrush( onlyLights );


 if ( onlyLights ) {
  return;
 }


 buildBrush->portalareas[ 0 ] = -1;
 buildBrush->portalareas[ 1 ] = -1;
 buildBrush->entityNum = numMapEntities - 1;
 buildBrush->brushNum = entitySourceBrushes;


 if ( !RemoveDuplicateBrushPlanes( buildBrush ) ) {
  return;
 }


 SetBrushContents( buildBrush );


 if ( nodetail && ( buildBrush->compileFlags & C_DETAIL ) ) {

  return;
 }


 if ( nowater && ( buildBrush->compileFlags & C_LIQUID ) ) {

  return;
 }


 if ( noHint && ( buildBrush->compileFlags & C_HINT ) ) {

  return;
 }


 b = FinishBrush();
}
