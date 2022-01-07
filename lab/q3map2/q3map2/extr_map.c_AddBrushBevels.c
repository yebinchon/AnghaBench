
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef float* vec3_t ;
struct TYPE_8__ {size_t planenum; void* bevel; int contentFlags; TYPE_1__* winding; } ;
typedef TYPE_2__ side_t ;
struct TYPE_10__ {int numsides; float* maxs; float* mins; TYPE_2__* sides; int brushNum; int entityNum; } ;
struct TYPE_9__ {float* normal; } ;


 int CrossProduct (float*,float*,float*) ;
 float DotProduct (int ,float*) ;
 void* FindFloatPlane (float*,float,int,int *) ;
 int MAX_BUILD_SIDES ;
 scalar_t__ PlaneEqual (TYPE_4__*,float*,float) ;
 int SnapNormal (float*) ;
 int VectorClear (float*) ;
 float VectorNormalize (float*,float*) ;
 int VectorSubtract (int ,int ,float*) ;
 float bevelSnap ;
 TYPE_5__* buildBrush ;
 int c_boxbevels ;
 int c_edgebevels ;
 float ceil (float) ;
 float floor (float) ;
 TYPE_4__* mapplanes ;
 int memset (TYPE_2__*,int ,int) ;
 void* qtrue ;
 int xml_Select (char*,int ,int ,void*) ;

void AddBrushBevels( void ){
 int axis, dir;
 int i, j, k, l, order;
 side_t sidetemp;
 side_t *s, *s2;
 winding_t *w, *w2;
 vec3_t normal;
 float dist;
 vec3_t vec, vec2;
 float d, minBack;




 order = 0;
 for ( axis = 0; axis < 3; axis++ ) {
  for ( dir = -1; dir <= 1; dir += 2, order++ ) {

   for ( i = 0, s = buildBrush->sides; i < buildBrush->numsides; i++, s++ )
   {
    if ( ( dir > 0 && mapplanes[ s->planenum ].normal[ axis ] == 1.0f ) ||
      ( dir < 0 && mapplanes[ s->planenum ].normal[ axis ] == -1.0f ) ) {
     break;
    }

   }

   if ( i == buildBrush->numsides ) {

    if ( buildBrush->numsides == MAX_BUILD_SIDES ) {
     xml_Select( "MAX_BUILD_SIDES", buildBrush->entityNum, buildBrush->brushNum, qtrue );
    }
    memset( s, 0, sizeof( *s ) );
    buildBrush->numsides++;
    VectorClear( normal );
    normal[axis] = dir;

    if ( dir == 1 ) {

     if ( bevelSnap > 0 ) {
      dist = floor( buildBrush->maxs[ axis ] / bevelSnap ) * bevelSnap;
     }
     else{
      dist = buildBrush->maxs[ axis ];
     }
    }
    else
    {

     if ( bevelSnap > 0 ) {
      dist = -ceil( buildBrush->mins[ axis ] / bevelSnap ) * bevelSnap;
     }
     else{
      dist = -buildBrush->mins[ axis ];
     }
    }

    s->planenum = FindFloatPlane( normal, dist, 0, ((void*)0) );
    s->contentFlags = buildBrush->sides[ 0 ].contentFlags;
    s->bevel = qtrue;
    c_boxbevels++;
   }


   if ( i != order ) {
    sidetemp = buildBrush->sides[order];
    buildBrush->sides[order] = buildBrush->sides[i];
    buildBrush->sides[i] = sidetemp;
   }
  }
 }




 if ( buildBrush->numsides == 6 ) {
  return;
 }


 for ( i = 6; i < buildBrush->numsides; i++ ) {
  s = buildBrush->sides + i;
  w = s->winding;
  if ( !w ) {
   continue;
  }
  for ( j = 0; j < w->numpoints; j++ ) {
   k = ( j + 1 ) % w->numpoints;
   VectorSubtract( w->p[j], w->p[k], vec );
   if ( VectorNormalize( vec, vec ) < 0.5f ) {
    continue;
   }
   SnapNormal( vec );
   for ( k = 0; k < 3; k++ ) {
    if ( vec[k] == -1.0f || vec[k] == 1.0f || ( vec[k] == 0.0f && vec[( k + 1 ) % 3] == 0.0f ) ) {
     break;
    }
   }
   if ( k != 3 ) {
    continue;
   }





   for ( axis = 0; axis < 3; axis++ ) {
    for ( dir = -1; dir <= 1; dir += 2 ) {

     VectorClear( vec2 );
     vec2[axis] = dir;
     CrossProduct( vec, vec2, normal );
     if ( VectorNormalize( normal, normal ) < 0.5f ) {
      continue;
     }
     dist = DotProduct( w->p[j], normal );



     for ( k = 0; k < buildBrush->numsides; k++ ) {


      if ( PlaneEqual( &mapplanes[buildBrush->sides[k].planenum], normal, dist ) ) {
       break;
      }

      w2 = buildBrush->sides[k].winding;
      if ( !w2 ) {
       continue;
      }
      minBack = 0.0f;
      for ( l = 0; l < w2->numpoints; l++ ) {
       d = DotProduct( w2->p[l], normal ) - dist;
       if ( d > 0.1f ) {
        break;
       }
       if ( d < minBack ) {
        minBack = d;
       }
      }

      if ( l != w2->numpoints ) {
       break;
      }


      if ( minBack > -0.1f ) {

       break;
      }
     }

     if ( k != buildBrush->numsides ) {
      continue;
     }





     if ( buildBrush->numsides == MAX_BUILD_SIDES ) {
      xml_Select( "MAX_BUILD_SIDES", buildBrush->entityNum, buildBrush->brushNum, qtrue );
     }
     s2 = &buildBrush->sides[buildBrush->numsides];
     buildBrush->numsides++;
     memset( s2, 0, sizeof( *s2 ) );

     s2->planenum = FindFloatPlane( normal, dist, 1, &w->p[ j ] );
     s2->contentFlags = buildBrush->sides[0].contentFlags;
     s2->bevel = qtrue;
     c_edgebevels++;
    }
   }
  }
 }
}
