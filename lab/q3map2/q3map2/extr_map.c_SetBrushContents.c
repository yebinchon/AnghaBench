
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int contentFlags; int compileFlags; int * shaderInfo; } ;
typedef TYPE_1__ side_t ;
typedef void* qboolean ;
struct TYPE_6__ {int numsides; int contentFlags; int compileFlags; void* opaque; void* detail; TYPE_1__* sides; int * contentShader; } ;
typedef TYPE_2__ brush_t ;
struct TYPE_7__ {int mapEntityNum; } ;


 int C_AREAPORTAL ;
 int C_DETAIL ;
 int C_STRUCTURAL ;
 int C_TRANSLUCENT ;
 int c_areaportals ;
 int c_detail ;
 int c_structural ;
 int entitySourceBrushes ;
 scalar_t__ fulldetail ;
 TYPE_3__* mapEnt ;
 void* qfalse ;
 void* qtrue ;
 int xml_Select (char*,int ,int ,void*) ;

void SetBrushContents( brush_t *b ){
 int contentFlags, compileFlags;
 side_t *s;
 int i;
 qboolean mixed;



 s = &b->sides[ 0 ];
 contentFlags = s->contentFlags;
 compileFlags = s->compileFlags;
 b->contentShader = s->shaderInfo;
 mixed = qfalse;


 for ( i = 1; i < b->numsides; i++, s++ )
 {
  s = &b->sides[ i ];
  if ( s->shaderInfo == ((void*)0) ) {
   continue;
  }
  if ( s->contentFlags != contentFlags || s->compileFlags != compileFlags ) {
   mixed = qtrue;
  }
 }






 if ( ( compileFlags & C_DETAIL ) && ( compileFlags & C_STRUCTURAL ) ) {
  xml_Select( "Mixed detail and structural (defaulting to structural)", mapEnt->mapEntityNum, entitySourceBrushes, qfalse );
  compileFlags &= ~C_DETAIL;
 }


 if ( fulldetail ) {
  compileFlags &= ~C_DETAIL;
 }


 if ( ( compileFlags & C_TRANSLUCENT ) && !( compileFlags & C_STRUCTURAL ) ) {
  compileFlags |= C_DETAIL;
 }


 if ( compileFlags & C_DETAIL ) {
  c_detail++;
  b->detail = qtrue;
 }
 else
 {
  c_structural++;
  b->detail = qfalse;
 }


 if ( compileFlags & C_TRANSLUCENT ) {
  b->opaque = qfalse;
 }
 else{
  b->opaque = qtrue;
 }


 if ( compileFlags & C_AREAPORTAL ) {
  c_areaportals++;
 }


 b->contentFlags = contentFlags;
 b->compileFlags = compileFlags;
}
