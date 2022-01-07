
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_7__ {int numSamples; float photons; int* direction; float deviance; int filterRadius; int* color; struct TYPE_7__* next; int style; } ;
typedef TYPE_1__ sun_t ;
struct TYPE_8__ {float fade; int filterRadius; int* color; float photons; int normal; int origin; int dist; int style; int falloffTolerance; int type; int flags; struct TYPE_8__* next; } ;
typedef TYPE_2__ light_t ;


 int DotProduct (int ,int ) ;
 int EMIT_SUN ;
 int LIGHT_SUN_DEFAULT ;
 int LS_NORMAL ;
 float MAX_WORLD_COORD ;
 float Random () ;
 int VectorCopy (int*,int*) ;
 int VectorMA (int ,float,int*,int ) ;
 int VectorScale (int*,double,int ) ;
 float atan2 (int,float) ;
 int cos (float) ;
 int falloffTolerance ;
 TYPE_2__* lights ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ noStyles ;
 int numSunLights ;
 TYPE_2__* safe_malloc (int) ;
 int sin (float) ;
 float skyScale ;
 float sqrt (int) ;
 int vec3_origin ;

__attribute__((used)) static void CreateSunLight( sun_t *sun ){
 int i;
 float photons, d, angle, elevation, da, de;
 vec3_t direction;
 light_t *light;



 if ( sun == ((void*)0) ) {
  return;
 }


 if ( sun->numSamples < 1 ) {
  sun->numSamples = 1;
 }


 photons = sun->photons / sun->numSamples;


 for ( i = 0; i < sun->numSamples; i++ )
 {

  if ( i == 0 ) {
   VectorCopy( sun->direction, direction );
  }
  else
  {
   d = sqrt( sun->direction[ 0 ] * sun->direction[ 0 ] + sun->direction[ 1 ] * sun->direction[ 1 ] );
   angle = atan2( sun->direction[ 1 ], sun->direction[ 0 ] );
   elevation = atan2( sun->direction[ 2 ], d );


   do
   {
    da = ( Random() * 2.0f - 1.0f ) * sun->deviance;
    de = ( Random() * 2.0f - 1.0f ) * sun->deviance;
   }
   while ( ( da * da + de * de ) > ( sun->deviance * sun->deviance ) );
   angle += da;
   elevation += de;





   direction[ 0 ] = cos( angle ) * cos( elevation );
   direction[ 1 ] = sin( angle ) * cos( elevation );
   direction[ 2 ] = sin( elevation );
  }


  numSunLights++;
  light = safe_malloc( sizeof( *light ) );
  memset( light, 0, sizeof( *light ) );
  light->next = lights;
  lights = light;


  light->flags = LIGHT_SUN_DEFAULT;
  light->type = EMIT_SUN;
  light->fade = 1.0f;
  light->falloffTolerance = falloffTolerance;
  light->filterRadius = sun->filterRadius / sun->numSamples;
  light->style = noStyles ? LS_NORMAL : sun->style;


  VectorMA( vec3_origin, ( MAX_WORLD_COORD * 8.0f ), direction, light->origin );


  VectorScale( direction, -1.0, light->normal );
  light->dist = DotProduct( light->origin, light->normal );


  VectorCopy( sun->color, light->color );
  light->photons = photons * skyScale;
 }


 if ( sun->next != ((void*)0) ) {
  CreateSunLight( sun->next );
 }
}
