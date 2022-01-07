
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int CrossProduct (int ,int ,int ) ;
 int PerpendicularVector (int ,int ) ;
 int RotatePointAroundVector (int ,int ,int ,float) ;
 int VectorCopy (int ,int ) ;

void RotateAroundDirection( vec3_t axis[3], float yaw ) {


 PerpendicularVector( axis[1], axis[0] );


 if ( yaw ) {
  vec3_t temp;

  VectorCopy( axis[1], temp );
  RotatePointAroundVector( axis[1], axis[0], temp, yaw );
 }


 CrossProduct( axis[0], axis[1], axis[2] );
}
