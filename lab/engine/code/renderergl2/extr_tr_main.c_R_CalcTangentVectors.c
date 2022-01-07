
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec4_t ;
typedef float* vec3_t ;
struct TYPE_3__ {float* st; float* xyz; int tangent; int normal; } ;
typedef TYPE_1__ srfVert_t ;
typedef int qboolean ;


 int CrossProduct (float*,float*,float*) ;
 float DotProduct (float*,float*) ;
 int R_VaoPackTangent (int ,float*) ;
 int R_VaoUnpackNormal (float*,int ) ;
 int VectorNormalize (float*) ;
 int VectorSubtract (float*,float*,float*) ;
 float fabs (float) ;
 int qfalse ;
 int qtrue ;

qboolean R_CalcTangentVectors(srfVert_t * dv[3])
{
 int i;
 float bb, s, t;
 vec3_t bary;



 bb = (dv[1]->st[0] - dv[0]->st[0]) * (dv[2]->st[1] - dv[0]->st[1]) - (dv[2]->st[0] - dv[0]->st[0]) * (dv[1]->st[1] - dv[0]->st[1]);
 if(fabs(bb) < 0.00000001f)
  return qfalse;


 for(i = 0; i < 3; i++)
 {
  vec4_t tangent;
  vec3_t normal, bitangent, nxt;


  s = dv[i]->st[0] + 10.0f;
  t = dv[i]->st[1];
  bary[0] = ((dv[1]->st[0] - s) * (dv[2]->st[1] - t) - (dv[2]->st[0] - s) * (dv[1]->st[1] - t)) / bb;
  bary[1] = ((dv[2]->st[0] - s) * (dv[0]->st[1] - t) - (dv[0]->st[0] - s) * (dv[2]->st[1] - t)) / bb;
  bary[2] = ((dv[0]->st[0] - s) * (dv[1]->st[1] - t) - (dv[1]->st[0] - s) * (dv[0]->st[1] - t)) / bb;

  tangent[0] = bary[0] * dv[0]->xyz[0] + bary[1] * dv[1]->xyz[0] + bary[2] * dv[2]->xyz[0];
  tangent[1] = bary[0] * dv[0]->xyz[1] + bary[1] * dv[1]->xyz[1] + bary[2] * dv[2]->xyz[1];
  tangent[2] = bary[0] * dv[0]->xyz[2] + bary[1] * dv[1]->xyz[2] + bary[2] * dv[2]->xyz[2];

  VectorSubtract(tangent, dv[i]->xyz, tangent);
  VectorNormalize(tangent);


  s = dv[i]->st[0];
  t = dv[i]->st[1] + 10.0f;
  bary[0] = ((dv[1]->st[0] - s) * (dv[2]->st[1] - t) - (dv[2]->st[0] - s) * (dv[1]->st[1] - t)) / bb;
  bary[1] = ((dv[2]->st[0] - s) * (dv[0]->st[1] - t) - (dv[0]->st[0] - s) * (dv[2]->st[1] - t)) / bb;
  bary[2] = ((dv[0]->st[0] - s) * (dv[1]->st[1] - t) - (dv[1]->st[0] - s) * (dv[0]->st[1] - t)) / bb;

  bitangent[0] = bary[0] * dv[0]->xyz[0] + bary[1] * dv[1]->xyz[0] + bary[2] * dv[2]->xyz[0];
  bitangent[1] = bary[0] * dv[0]->xyz[1] + bary[1] * dv[1]->xyz[1] + bary[2] * dv[2]->xyz[1];
  bitangent[2] = bary[0] * dv[0]->xyz[2] + bary[1] * dv[1]->xyz[2] + bary[2] * dv[2]->xyz[2];

  VectorSubtract(bitangent, dv[i]->xyz, bitangent);
  VectorNormalize(bitangent);


  R_VaoUnpackNormal(normal, dv[i]->normal);
  CrossProduct(normal, tangent, nxt);
  tangent[3] = (DotProduct(nxt, bitangent) < 0.0f) ? -1.0f : 1.0f;

  R_VaoPackTangent(dv[i]->tangent, tangent);




 }

 return qtrue;
}
