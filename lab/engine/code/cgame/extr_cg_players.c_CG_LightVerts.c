
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_3__ {float* modulate; int xyz; } ;
typedef TYPE_1__ polyVert_t ;


 float DotProduct (float*,float*) ;
 int qtrue ;
 int trap_R_LightForPoint (int ,float*,float*,float*) ;

int CG_LightVerts( vec3_t normal, int numVerts, polyVert_t *verts )
{
 int i, j;
 float incoming;
 vec3_t ambientLight;
 vec3_t lightDir;
 vec3_t directedLight;

 trap_R_LightForPoint( verts[0].xyz, ambientLight, directedLight, lightDir );

 for (i = 0; i < numVerts; i++) {
  incoming = DotProduct (normal, lightDir);
  if ( incoming <= 0 ) {
   verts[i].modulate[0] = ambientLight[0];
   verts[i].modulate[1] = ambientLight[1];
   verts[i].modulate[2] = ambientLight[2];
   verts[i].modulate[3] = 255;
   continue;
  }
  j = ( ambientLight[0] + incoming * directedLight[0] );
  if ( j > 255 ) {
   j = 255;
  }
  verts[i].modulate[0] = j;

  j = ( ambientLight[1] + incoming * directedLight[1] );
  if ( j > 255 ) {
   j = 255;
  }
  verts[i].modulate[1] = j;

  j = ( ambientLight[2] + incoming * directedLight[2] );
  if ( j > 255 ) {
   j = 255;
  }
  verts[i].modulate[2] = j;

  verts[i].modulate[3] = 255;
 }
 return qtrue;
}
