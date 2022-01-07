
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qhandle_t ;
typedef int polyVert_t ;


 int CG_R_ADDPOLYTOSCENE ;
 int syscall (int ,int ,int,int const*) ;

void trap_R_AddPolyToScene( qhandle_t hShader , int numVerts, const polyVert_t *verts ) {
 syscall( CG_R_ADDPOLYTOSCENE, hShader, numVerts, verts );
}
