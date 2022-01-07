
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 float DotProduct (float* const,float* const) ;
 float Q_fabs (float) ;
 int assert (int) ;

void ProjectPointOnPlane( vec3_t dst, const vec3_t p, const vec3_t normal )
{
 float d;
 vec3_t n;
 float inv_denom;

 inv_denom = DotProduct( normal, normal );

 assert( Q_fabs(inv_denom) != 0.0f );

 inv_denom = 1.0f / inv_denom;

 d = DotProduct( normal, p ) * inv_denom;

 n[0] = normal[0] * inv_denom;
 n[1] = normal[1] * inv_denom;
 n[2] = normal[2] * inv_denom;

 dst[0] = p[0] - d * n[0];
 dst[1] = p[1] - d * n[1];
 dst[2] = p[2] - d * n[2];
}
