
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
typedef scalar_t__ qboolean ;
struct TYPE_10__ {float photons; float add; int flags; scalar_t__ type; scalar_t__ cluster; float envelope; scalar_t__* mins; scalar_t__* maxs; scalar_t__* origin; scalar_t__* normal; float falloffTolerance; float fade; int envelope2; size_t style; struct TYPE_10__* next; struct TYPE_10__* w; TYPE_1__* si; } ;
typedef TYPE_2__ light_t ;
typedef int buckets ;
struct TYPE_11__ {scalar_t__ cluster; scalar_t__* mins; scalar_t__* maxs; } ;
typedef TYPE_3__ bspLeaf_t ;
struct TYPE_9__ {scalar_t__ noFast; } ;


 int AddPointToBounds (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int ChopBounds (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int ClearBounds (scalar_t__*,scalar_t__*) ;
 void* ClusterForPointExt (scalar_t__*,int ) ;
 scalar_t__ ClusterVisible (scalar_t__,scalar_t__) ;
 scalar_t__ EMIT_AREA ;
 scalar_t__ EMIT_SPOT ;
 scalar_t__ EMIT_SUN ;
 int LIGHT_ATTEN_DISTANCE ;
 int LIGHT_ATTEN_LINEAR ;
 int LIGHT_EPSILON ;
 int LIGHT_FAST ;
 int LIGHT_FAST_TEMP ;
 int LIGHT_GRID ;
 int LIGHT_NEGATIVE ;
 int LIGHT_NUDGE ;
 int LIGHT_SURFACES ;
 size_t LS_NORMAL ;
 float MAX_WORLD_COORD ;
 float MIN_WORLD_COORD ;
 float PointToPolygonFormFactor (scalar_t__*,scalar_t__*,TYPE_2__*) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,char*) ;
 int Sys_Printf (char*,scalar_t__) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 scalar_t__ VectorLength (scalar_t__*) ;
 int VectorMA (scalar_t__*,float,scalar_t__*,scalar_t__*) ;
 int VectorScale (scalar_t__*,int,scalar_t__*) ;
 int VectorSet (scalar_t__*,float,float,float) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 TYPE_3__* bspLeafs ;
 scalar_t__ exactPointToPolygon ;
 int free (TYPE_2__*) ;
 TYPE_2__* lights ;
 float linearScale ;
 int memset (TYPE_2__**,int ,int) ;
 int noCollapse ;
 int numBSPLeafs ;
 scalar_t__ numCulledLights ;
 scalar_t__ numLights ;
 scalar_t__ qfalse ;
 int qtrue ;
 float sqrt (float) ;

void SetupEnvelopes( qboolean forGrid, qboolean fastFlag ){
 int i, x, y, z, x1, y1, z1;
 light_t *light, *light2, **owner;
 bspLeaf_t *leaf;
 vec3_t origin, dir, mins, maxs;
 float radius, intensity;
 light_t *buckets[ 256 ];



 if ( lights == ((void*)0) ) {
  return;
 }


 Sys_FPrintf( SYS_VRB, "--- SetupEnvelopes%s ---\n", fastFlag ? " (fast)" : "" );


 numLights = 0;
 numCulledLights = 0;
 owner = &lights;
 while ( *owner != ((void*)0) )
 {

  light = *owner;


  if ( light->photons < 0.0f || light->add < 0.0f ) {
   light->photons *= -1.0f;
   light->add *= -1.0f;
   light->flags |= LIGHT_NEGATIVE;
  }


  if ( light->type == EMIT_SUN ) {

   light->cluster = 0;
   light->envelope = MAX_WORLD_COORD * 8.0f;
   VectorSet( light->mins, MIN_WORLD_COORD * 8.0f, MIN_WORLD_COORD * 8.0f, MIN_WORLD_COORD * 8.0f );
   VectorSet( light->maxs, MAX_WORLD_COORD * 8.0f, MAX_WORLD_COORD * 8.0f, MAX_WORLD_COORD * 8.0f );
  }


  else
  {

   light->cluster = ClusterForPointExt( light->origin, LIGHT_EPSILON );


   if ( light->cluster < 0 ) {

    for ( x = 0; x < 4; x++ )
    {

     x1 = ( ( x >> 1 ) ^ ( x & 1 ? -1 : 0 ) ) + ( x & 1 );

     for ( y = 0; y < 4; y++ )
     {
      y1 = ( ( y >> 1 ) ^ ( y & 1 ? -1 : 0 ) ) + ( y & 1 );

      for ( z = 0; z < 4; z++ )
      {
       z1 = ( ( z >> 1 ) ^ ( z & 1 ? -1 : 0 ) ) + ( z & 1 );


       origin[ 0 ] = light->origin[ 0 ] + ( LIGHT_NUDGE * x1 );
       origin[ 1 ] = light->origin[ 1 ] + ( LIGHT_NUDGE * y1 );
       origin[ 2 ] = light->origin[ 2 ] + ( LIGHT_NUDGE * z1 );


       light->cluster = ClusterForPointExt( origin, LIGHT_EPSILON );
       if ( light->cluster < 0 ) {
        continue;
       }


       VectorCopy( origin, light->origin );
      }
     }
    }
   }


   if ( light->cluster >= 0 ) {

    if ( fastFlag ) {
     light->flags |= LIGHT_FAST_TEMP;
    }
    else{
     light->flags &= ~LIGHT_FAST_TEMP;
    }
    if ( light->si && light->si->noFast ) {
     light->flags &= ~( LIGHT_FAST | LIGHT_FAST_TEMP );
    }


    light->envelope = 0;


    if ( exactPointToPolygon && light->type == EMIT_AREA && light->w != ((void*)0) ) {

     VectorScale( light->normal, -1.0f, dir );
     for ( radius = 100.0f; radius < 130000.0f && light->envelope == 0; radius += 10.0f )
     {
      float factor;

      VectorMA( light->origin, radius, light->normal, origin );
      factor = PointToPolygonFormFactor( origin, dir, light->w );
      if ( factor < 0.0f ) {
       factor *= -1.0f;
      }
      if ( ( factor * light->add ) <= light->falloffTolerance ) {
       light->envelope = radius;
      }
     }


     if ( !( light->flags & LIGHT_FAST ) && !( light->flags & LIGHT_FAST_TEMP ) ) {
      light->envelope = MAX_WORLD_COORD * 8.0f;
     }
    }
    else
    {
     radius = 0.0f;
     intensity = light->photons;
    }


    if ( light->envelope <= 0.0f ) {

     if ( !( light->flags & LIGHT_ATTEN_DISTANCE ) ) {
      light->envelope = MAX_WORLD_COORD * 8.0f;
     }


     else if ( ( light->flags & LIGHT_ATTEN_LINEAR ) ) {

      light->envelope = ( ( intensity * linearScale ) - light->falloffTolerance ) / light->fade;
     }
     else{
      light->envelope = sqrt( intensity / light->falloffTolerance ) + radius;
     }







    }


    {

     ClearBounds( mins, maxs );


     for ( i = 0; i < numBSPLeafs; i++ )
     {

      leaf = &bspLeafs[ i ];


      if ( leaf->cluster < 0 ) {
       continue;
      }
      if ( ClusterVisible( light->cluster, leaf->cluster ) == qfalse ) {
       continue;
      }


      VectorCopy( leaf->mins, origin );
      AddPointToBounds( origin, mins, maxs );
      VectorCopy( leaf->maxs, origin );
      AddPointToBounds( origin, mins, maxs );
     }


     for ( i = 0; i < 3; i++ )
     {
      if ( mins[ i ] > light->origin[ i ] || maxs[ i ] < light->origin[ i ] ) {




       AddPointToBounds( light->origin, mins, maxs );
      }
     }


     if ( light->type == EMIT_AREA || light->type == EMIT_SPOT ) {
      ChopBounds( mins, maxs, light->origin, light->normal );
     }


     VectorCopy( mins, light->mins );
     VectorCopy( maxs, light->maxs );



     VectorScale( light->origin, 2, origin );
     VectorSubtract( origin, maxs, origin );
     AddPointToBounds( origin, mins, maxs );

     VectorScale( light->origin, 2, origin );
     VectorSubtract( origin, mins, origin );
     AddPointToBounds( origin, mins, maxs );


     VectorSubtract( maxs, light->origin, dir );
     radius = (float) VectorLength( dir );


     if ( radius < light->envelope ) {
      light->envelope = radius;

     }


    }


    if ( forGrid ) {
     if ( !( light->flags & LIGHT_GRID ) ) {
      light->envelope = 0.0f;
     }
    }
    else
    {
     if ( !( light->flags & LIGHT_SURFACES ) ) {
      light->envelope = 0.0f;
     }
    }
   }


   if ( light->cluster < 0 || light->envelope <= 0.0f ) {




    numCulledLights++;
    *owner = light->next;
    if ( light->w != ((void*)0) ) {
     free( light->w );
    }
    free( light );
    continue;
   }
  }


  light->envelope2 = ( light->envelope * light->envelope );


  numLights++;


  owner = &( ( **owner ).next );
 }


 memset( buckets, 0, sizeof( buckets ) );
 light2 = ((void*)0);
 for ( light = lights; light != ((void*)0); light = light2 )
 {

  light2 = light->next;


  light->next = buckets[ light->style ];
  buckets[ light->style ] = light;


  if ( light->style != LS_NORMAL ) {
   noCollapse = qtrue;
  }
 }


 lights = ((void*)0);
 for ( i = 255; i >= 0; i-- )
 {
  light2 = ((void*)0);
  for ( light = buckets[ i ]; light != ((void*)0); light = light2 )
  {
   light2 = light->next;
   light->next = lights;
   lights = light;
  }
 }


 Sys_Printf( "%9d total lights\n", numLights );
 Sys_Printf( "%9d culled lights\n", numCulledLights );
}
