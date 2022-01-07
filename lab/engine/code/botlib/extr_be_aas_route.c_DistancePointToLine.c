
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int AAS_ProjectPointOntoVector (int ,int ,int ,int ) ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;

float DistancePointToLine(vec3_t v1, vec3_t v2, vec3_t point)
{
 vec3_t vec, p2;

 AAS_ProjectPointOntoVector(point, v1, v2, p2);
 VectorSubtract(point, p2, vec);
 return VectorLength(vec);
}
