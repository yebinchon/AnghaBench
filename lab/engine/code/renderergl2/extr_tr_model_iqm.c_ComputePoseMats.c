
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* jointParents; float* poseMats; int num_poses; } ;
typedef TYPE_1__ iqmData_t ;


 int Com_Memcpy (float*,float*,int) ;
 int InterpolateMatrix (float*,float*,float,float*) ;
 int Matrix34Multiply (float*,float*,float*) ;

__attribute__((used)) static void ComputePoseMats( iqmData_t *data, int frame, int oldframe,
         float backlerp, float *mat ) {
 float *mat1, *mat2;
 int *joint = data->jointParents;
 int i;

 if ( oldframe == frame ) {
  mat1 = data->poseMats + 12 * data->num_poses * frame;
  for( i = 0; i < data->num_poses; i++, joint++ ) {
   if( *joint >= 0 ) {
    Matrix34Multiply( mat + 12 * *joint,
        mat1 + 12*i, mat + 12*i );
   } else {
    Com_Memcpy( mat + 12*i, mat1 + 12*i, 12 * sizeof(float) );
   }
  }
 } else {
  mat1 = data->poseMats + 12 * data->num_poses * frame;
  mat2 = data->poseMats + 12 * data->num_poses * oldframe;

  for( i = 0; i < data->num_poses; i++, joint++ ) {
   if( *joint >= 0 ) {
    float tmpMat[12];
    InterpolateMatrix( mat1 + 12*i, mat2 + 12*i,
         backlerp, tmpMat );
    Matrix34Multiply( mat + 12 * *joint,
        tmpMat, mat + 12*i );

   } else {
    InterpolateMatrix( mat1 + 12*i, mat2 + 12*i,
         backlerp, mat + 12*i );
   }
  }
 }
}
