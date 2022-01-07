
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int R_CullPointAndRadius (int ,float) ;
 int R_LocalPointToWorld (int ,int ) ;

int R_CullLocalPointAndRadius( vec3_t pt, float radius )
{
 vec3_t transformed;

 R_LocalPointToWorld( pt, transformed );

 return R_CullPointAndRadius( transformed, radius );
}
