
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fogIndex; int hShader; } ;
typedef TYPE_2__ srfPoly_t ;
typedef int shader_t ;
struct TYPE_4__ {int rdflags; int numPolys; TYPE_2__* polys; } ;
struct TYPE_6__ {int currentEntityNum; int shiftedEntityNum; TYPE_1__ refdef; } ;


 int QSORT_REFENTITYNUM_SHIFT ;
 int RDF_NOFOG ;
 int REFENTITYNUM_WORLD ;
 int R_AddDrawSurf (void*,int *,int,int ,int ,int ) ;
 int * R_GetShaderByHandle (int ) ;
 int qfalse ;
 TYPE_3__ tr ;

void R_AddPolygonSurfaces( void ) {
 int i;
 shader_t *sh;
 srfPoly_t *poly;
 int fogMask;

 tr.currentEntityNum = REFENTITYNUM_WORLD;
 tr.shiftedEntityNum = tr.currentEntityNum << QSORT_REFENTITYNUM_SHIFT;
 fogMask = -((tr.refdef.rdflags & RDF_NOFOG) == 0);

 for ( i = 0, poly = tr.refdef.polys; i < tr.refdef.numPolys ; i++, poly++ ) {
  sh = R_GetShaderByHandle( poly->hShader );
  R_AddDrawSurf( ( void * )poly, sh, poly->fogIndex & fogMask, qfalse, qfalse, 0 );
 }
}
