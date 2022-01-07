
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {scalar_t__ twoSided; int compileFlags; int color; scalar_t__ opaque; scalar_t__ passSolid; scalar_t__ testAll; int forceSunlight; scalar_t__ testOcclusion; int direction; int normal; int end; int origin; int displacement; int cluster; TYPE_2__* light; } ;
typedef TYPE_1__ trace_t ;
struct TYPE_7__ {int flags; float envelope; scalar_t__ type; float dist; float photons; float add; float angleScale; float fade; float radiusByDist; float falloffTolerance; int color; int origin; int normal; int w; int cluster; } ;
typedef TYPE_2__ light_t ;


 int C_SKY ;
 int ClusterVisible (int ,int ) ;
 float DotProduct (int ,int ) ;
 scalar_t__ EMIT_AREA ;
 scalar_t__ EMIT_POINT ;
 scalar_t__ EMIT_SPOT ;
 scalar_t__ EMIT_SUN ;
 int LIGHT_ATTEN_ANGLE ;
 int LIGHT_ATTEN_LINEAR ;
 int LIGHT_FAST_ACTUAL ;
 int LIGHT_SURFACES ;
 int LIGHT_TWOSIDED ;
 float PointToPolygonFormFactor (int ,int ,int ) ;
 float SetupTrace (TYPE_1__*) ;
 int TraceLine (TYPE_1__*) ;
 int VectorAdd (int ,int ,int ) ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;
 float VectorLength (int ) ;
 int VectorMA (int ,float,int ,int ) ;
 int VectorScale (int ,float,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 float fabs (float) ;
 scalar_t__ faster ;
 float linearScale ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

int LightContributionToSample( trace_t *trace ){
 light_t *light;
 float angle;
 float add;
 float dist;



 light = trace->light;


 VectorClear( trace->color );


 if ( !( light->flags & LIGHT_SURFACES ) || light->envelope <= 0.0f ) {
  return 0;
 }


 if ( light->type != EMIT_SUN ) {

  if ( trace->twoSided == qfalse ) {
   if ( DotProduct( light->origin, trace->normal ) - DotProduct( trace->origin, trace->normal ) < 0.0f ) {
    return 0;
   }
  }


  if ( !ClusterVisible( trace->cluster, light->cluster ) ) {
   return 0;
  }
 }


 if ( light->type == EMIT_AREA ) {
  float factor;
  float d;
  vec3_t pushedOrigin;



  d = DotProduct( trace->origin, light->normal ) - light->dist;
  if ( d < 3.0f ) {

   if ( !( light->flags & LIGHT_TWOSIDED ) && d < -1.0f ) {
    return 0;
   }


   if ( d > -3.0f && DotProduct( trace->normal, light->normal ) > 0.9f ) {
    return 0;
   }
  }



  if ( d > -8.0f && d < 8.0f ) {
   VectorMA( trace->origin, ( 8.0f - d ), light->normal, pushedOrigin );
  }
  else{
   VectorCopy( trace->origin, pushedOrigin );
  }


  VectorCopy( light->origin, trace->end );
  dist = SetupTrace( trace );
  if ( dist >= light->envelope ) {
   return 0;
  }


  if ( faster ) {

   angle = DotProduct( trace->normal, trace->direction );


   if ( trace->twoSided ) {
    angle = fabs( angle );
   }


   angle *= -DotProduct( light->normal, trace->direction );
   if ( angle == 0.0f ) {
    return 0;
   }
   else if ( angle < 0.0f &&
       ( trace->twoSided || ( light->flags & LIGHT_TWOSIDED ) ) ) {
    angle = -angle;
   }
   add = light->photons / ( dist * dist ) * angle;
  }
  else
  {

   factor = PointToPolygonFormFactor( pushedOrigin, trace->normal, light->w );
   if ( factor == 0.0f ) {
    return 0;
   }
   else if ( factor < 0.0f ) {

    if ( trace->twoSided || ( light->flags & LIGHT_TWOSIDED ) ) {
     factor = -factor;


     VectorMA( light->origin, -2.0f, light->normal, trace->end );
     dist = SetupTrace( trace );
     if ( dist >= light->envelope ) {
      return 0;
     }
    }
    else{
     return 0;
    }
   }


   add = factor * light->add;
  }
 }


 else if ( light->type == EMIT_POINT || light->type == EMIT_SPOT ) {

  VectorCopy( light->origin, trace->end );
  dist = SetupTrace( trace );
  if ( dist >= light->envelope ) {
   return 0;
  }


  if ( dist < 16.0f ) {
   dist = 16.0f;
  }


  angle = ( light->flags & LIGHT_ATTEN_ANGLE ) ? DotProduct( trace->normal, trace->direction ) : 1.0f;
  if ( light->angleScale != 0.0f ) {
   angle /= light->angleScale;
   if ( angle > 1.0f ) {
    angle = 1.0f;
   }
  }


  if ( trace->twoSided ) {
   angle = fabs( angle );
  }


  if ( light->flags & LIGHT_ATTEN_LINEAR ) {
   add = angle * light->photons * linearScale - ( dist * light->fade );
   if ( add < 0.0f ) {
    add = 0.0f;
   }
  }
  else{
   add = light->photons / ( dist * dist ) * angle;
  }


  if ( light->type == EMIT_SPOT ) {
   float distByNormal, radiusAtDist, sampleRadius;
   vec3_t pointAtDist, distToSample;



   distByNormal = -DotProduct( trace->displacement, light->normal );
   if ( distByNormal < 0.0f ) {
    return 0;
   }
   VectorMA( light->origin, distByNormal, light->normal, pointAtDist );
   radiusAtDist = light->radiusByDist * distByNormal;
   VectorSubtract( trace->origin, pointAtDist, distToSample );
   sampleRadius = VectorLength( distToSample );


   if ( sampleRadius >= radiusAtDist ) {
    return 0;
   }


   if ( sampleRadius > ( radiusAtDist - 32.0f ) ) {
    add *= ( ( radiusAtDist - sampleRadius ) / 32.0f );
   }
  }
 }


 else if ( light->type == EMIT_SUN ) {

  VectorAdd( trace->origin, light->origin, trace->end );
  dist = SetupTrace( trace );


  angle = ( light->flags & LIGHT_ATTEN_ANGLE )
    ? DotProduct( trace->normal, trace->direction )
    : 1.0f;


  if ( trace->twoSided ) {
   angle = fabs( angle );
  }


  add = light->photons * angle;
  if ( add <= 0.0f ) {
   return 0;
  }


  trace->testAll = qtrue;
  VectorScale( light->color, add, trace->color );


  if ( trace->testOcclusion && !trace->forceSunlight ) {

   TraceLine( trace );
   if ( !( trace->compileFlags & C_SKY ) || trace->opaque ) {
    VectorClear( trace->color );
    return -1;
   }
  }


  return 1;
 }


 else {
  return -1;
 }


 if ( add <= 0.0f || ( add <= light->falloffTolerance && ( light->flags & LIGHT_FAST_ACTUAL ) ) ) {
  return 0;
 }


 trace->testAll = qfalse;
 VectorScale( light->color, add, trace->color );


 TraceLine( trace );
 if ( trace->passSolid || trace->opaque ) {
  VectorClear( trace->color );
  return -1;
 }


 return 1;
}
