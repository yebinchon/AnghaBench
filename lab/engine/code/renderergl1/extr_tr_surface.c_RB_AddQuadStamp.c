
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int byte ;


 int RB_AddQuadStampExt (int ,int ,int ,int *,int ,int ,int,int) ;

void RB_AddQuadStamp( vec3_t origin, vec3_t left, vec3_t up, byte *color ) {
 RB_AddQuadStampExt( origin, left, up, color, 0, 0, 1, 1 );
}
