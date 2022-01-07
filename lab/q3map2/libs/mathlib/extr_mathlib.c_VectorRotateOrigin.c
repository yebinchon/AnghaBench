
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int VectorAdd (int ,int ,int ) ;
 int VectorRotate (int ,int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;

void VectorRotateOrigin( vec3_t vIn, vec3_t vRotation, vec3_t vOrigin, vec3_t out ){
 vec3_t vTemp, vTemp2;

 VectorSubtract( vIn, vOrigin, vTemp );
 VectorRotate( vTemp, vRotation, vTemp2 );
 VectorAdd( vTemp2, vOrigin, out );
}
