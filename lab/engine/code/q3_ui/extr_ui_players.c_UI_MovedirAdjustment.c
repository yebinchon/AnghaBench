
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_3__ {int moveAngles; int viewAngles; } ;
typedef TYPE_1__ playerInfo_t ;


 int AngleVectors (double*,double*,int *,int *) ;
 double Q_fabs (double) ;
 int VectorSubtract (int ,int ,double*) ;

__attribute__((used)) static float UI_MovedirAdjustment( playerInfo_t *pi ) {
 vec3_t relativeAngles;
 vec3_t moveVector;

 VectorSubtract( pi->viewAngles, pi->moveAngles, relativeAngles );
 AngleVectors( relativeAngles, moveVector, ((void*)0), ((void*)0) );
 if ( Q_fabs( moveVector[0] ) < 0.01 ) {
  moveVector[0] = 0.0;
 }
 if ( Q_fabs( moveVector[1] ) < 0.01 ) {
  moveVector[1] = 0.0;
 }

 if ( moveVector[1] == 0 && moveVector[0] > 0 ) {
  return 0;
 }
 if ( moveVector[1] < 0 && moveVector[0] > 0 ) {
  return 22;
 }
 if ( moveVector[1] < 0 && moveVector[0] == 0 ) {
  return 45;
 }
 if ( moveVector[1] < 0 && moveVector[0] < 0 ) {
  return -22;
 }
 if ( moveVector[1] == 0 && moveVector[0] < 0 ) {
  return 0;
 }
 if ( moveVector[1] > 0 && moveVector[0] < 0 ) {
  return 22;
 }
 if ( moveVector[1] > 0 && moveVector[0] == 0 ) {
  return -45;
 }

 return -22;
}
