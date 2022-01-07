
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float vec_t ;
typedef int const vec3_t ;


 int CrossProduct (int const,int const,int const) ;
 float DotProduct (int const,int const) ;
 int VectorMA (int const,float,int const,int const) ;
 int VectorNormalize (int const) ;

vec_t R_CalcTangentSpace(vec3_t tangent, vec3_t bitangent, const vec3_t normal, const vec3_t sdir, const vec3_t tdir)
{
 vec3_t n_cross_t;
 vec_t n_dot_t, handedness;


 n_dot_t = DotProduct(normal, sdir);
 VectorMA(sdir, -n_dot_t, normal, tangent);
 VectorNormalize(tangent);


 CrossProduct(normal, sdir, n_cross_t);
 handedness = (DotProduct(n_cross_t, tdir) < 0.0f) ? -1.0f : 1.0f;


 if (bitangent)
  CrossProduct(normal, tangent, bitangent);

 return handedness;
}
