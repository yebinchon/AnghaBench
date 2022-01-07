
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;
typedef int clipHandle_t ;


 int AngleVectors (scalar_t__* const,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int BOX_MODEL_HANDLE ;
 int CM_PointContents (scalar_t__*,int ) ;
 scalar_t__ DotProduct (scalar_t__*,scalar_t__*) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int VectorSubtract (scalar_t__* const,scalar_t__* const,scalar_t__*) ;

int CM_TransformedPointContents( const vec3_t p, clipHandle_t model, const vec3_t origin, const vec3_t angles) {
 vec3_t p_l;
 vec3_t temp;
 vec3_t forward, right, up;


 VectorSubtract (p, origin, p_l);


 if ( model != BOX_MODEL_HANDLE &&
 (angles[0] || angles[1] || angles[2]) )
 {
  AngleVectors (angles, forward, right, up);

  VectorCopy (p_l, temp);
  p_l[0] = DotProduct (temp, forward);
  p_l[1] = -DotProduct (temp, right);
  p_l[2] = DotProduct (temp, up);
 }

 return CM_PointContents( p_l, model );
}
