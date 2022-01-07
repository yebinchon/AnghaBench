
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float** axis; float* origin; } ;
typedef TYPE_1__ orientation_t ;
struct TYPE_7__ {char* jointNames; int num_joints; } ;
typedef TYPE_2__ iqmData_t ;


 int AxisClear (float**) ;
 int ComputeJointMats (TYPE_2__*,int,int,float,float*) ;
 int IQM_MAX_JOINTS ;
 int VectorClear (float*) ;
 int qfalse ;
 int qtrue ;
 int strcmp (char const*,char*) ;
 scalar_t__ strlen (char*) ;

int R_IQMLerpTag( orientation_t *tag, iqmData_t *data,
    int startFrame, int endFrame,
    float frac, const char *tagName ) {
 float jointMats[IQM_MAX_JOINTS * 12];
 int joint;
 char *names = data->jointNames;


 for( joint = 0; joint < data->num_joints; joint++ ) {
  if( !strcmp( tagName, names ) )
   break;
  names += strlen( names ) + 1;
 }
 if( joint >= data->num_joints ) {
  AxisClear( tag->axis );
  VectorClear( tag->origin );
  return qfalse;
 }

 ComputeJointMats( data, startFrame, endFrame, frac, jointMats );

 tag->axis[0][0] = jointMats[12 * joint + 0];
 tag->axis[1][0] = jointMats[12 * joint + 1];
 tag->axis[2][0] = jointMats[12 * joint + 2];
 tag->origin[0] = jointMats[12 * joint + 3];
 tag->axis[0][1] = jointMats[12 * joint + 4];
 tag->axis[1][1] = jointMats[12 * joint + 5];
 tag->axis[2][1] = jointMats[12 * joint + 6];
 tag->origin[1] = jointMats[12 * joint + 7];
 tag->axis[0][2] = jointMats[12 * joint + 8];
 tag->axis[1][2] = jointMats[12 * joint + 9];
 tag->axis[2][2] = jointMats[12 * joint + 10];
 tag->origin[2] = jointMats[12 * joint + 11];

 return qtrue;
}
