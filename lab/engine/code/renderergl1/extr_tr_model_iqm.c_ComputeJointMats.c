
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int outmat ;
struct TYPE_4__ {scalar_t__ num_poses; float* jointMats; int num_joints; } ;
typedef TYPE_1__ iqmData_t ;


 int Com_Memcpy (float*,float*,int) ;
 int ComputePoseMats (TYPE_1__*,int,int,float,float*) ;
 int Matrix34Multiply (float*,float*,float*) ;

__attribute__((used)) static void ComputeJointMats( iqmData_t *data, int frame, int oldframe,
         float backlerp, float *mat ) {
 float *mat1;
 int i;

 if ( data->num_poses == 0 ) {
  Com_Memcpy( mat, data->jointMats, data->num_joints * 12 * sizeof(float) );
  return;
 }

 ComputePoseMats( data, frame, oldframe, backlerp, mat );

 for( i = 0; i < data->num_joints; i++ ) {
  float outmat[12];
  mat1 = mat + 12 * i;

  Com_Memcpy(outmat, mat1, sizeof(outmat));

  Matrix34Multiply( outmat, data->jointMats + 12*i, mat1 );
 }
}
