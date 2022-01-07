
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float dist; int normal; } ;
struct TYPE_7__ {int* portalfront; int* portalflood; int* portalvis; float radius; scalar_t__ nummightsee; int leaf; TYPE_1__ plane; TYPE_3__* winding; int origin; scalar_t__ removed; } ;
typedef TYPE_2__ vportal_t ;
typedef int vec3_t ;
struct TYPE_8__ {int numpoints; int * points; } ;
typedef TYPE_3__ fixedWinding_t ;


 scalar_t__ CountBits (int*,int) ;
 float DotProduct (int ,int ) ;
 float ON_EPSILON ;
 int SimpleFlood (TYPE_2__*,int ) ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int c_flood ;
 float farPlaneDist ;
 int memset (int*,int ,int ) ;
 int numportals ;
 int portal_mutex ;
 int portalbytes ;
 TYPE_2__* portals ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 void* safe_malloc (int ) ;

void BasePortalVis( int portalnum ){
 int j, k;
 vportal_t *tp, *p;
 float d;
 fixedWinding_t *w;
 vec3_t dir;


 p = portals + portalnum;

 if ( p->removed ) {
  return;
 }

 p->portalfront = safe_malloc( portalbytes );
 memset( p->portalfront, 0, portalbytes );

 p->portalflood = safe_malloc( portalbytes );
 memset( p->portalflood, 0, portalbytes );

 p->portalvis = safe_malloc( portalbytes );
 memset( p->portalvis, 0, portalbytes );

 for ( j = 0, tp = portals ; j < numportals * 2 ; j++, tp++ )
 {
  if ( j == portalnum ) {
   continue;
  }
  if ( tp->removed ) {
   continue;
  }
  if ( farPlaneDist > 0.0f ) {
   VectorSubtract( p->origin, tp->origin, dir );
   if ( VectorLength( dir ) - p->radius - tp->radius > farPlaneDist ) {
    continue;
   }
  }


  w = tp->winding;
  for ( k = 0 ; k < w->numpoints ; k++ )
  {
   d = DotProduct( w->points[k], p->plane.normal )
    - p->plane.dist;
   if ( d > ON_EPSILON ) {
    break;
   }
  }
  if ( k == w->numpoints ) {
   continue;

  }
  w = p->winding;
  for ( k = 0 ; k < w->numpoints ; k++ )
  {
   d = DotProduct( w->points[k], tp->plane.normal )
    - tp->plane.dist;
   if ( d < -ON_EPSILON ) {
    break;
   }
  }
  if ( k == w->numpoints ) {
   continue;

  }
  p->portalfront[j >> 3] |= ( 1 << ( j & 7 ) );
 }

 SimpleFlood( p, p->leaf );

 pthread_mutex_lock( &portal_mutex );
 p->nummightsee = CountBits( p->portalflood, numportals * 2 );

 c_flood += p->nummightsee;
 pthread_mutex_unlock( &portal_mutex );
}
