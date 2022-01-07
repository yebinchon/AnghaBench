
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bounds; } ;
typedef TYPE_1__ srfTriangles_t ;
typedef int qboolean ;


 int CULL_OUT ;
 int R_CullLocalBox (int ) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean R_CullTriSurf( srfTriangles_t *cv ) {
 int boxCull;

 boxCull = R_CullLocalBox( cv->bounds );

 if ( boxCull == CULL_OUT ) {
  return qtrue;
 }
 return qfalse;
}
