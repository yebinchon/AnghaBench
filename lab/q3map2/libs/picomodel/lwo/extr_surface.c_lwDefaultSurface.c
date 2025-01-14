
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {float val; } ;
struct TYPE_12__ {float val; } ;
struct TYPE_11__ {float val; } ;
struct TYPE_10__ {float val; } ;
struct TYPE_9__ {float* rgb; } ;
struct TYPE_14__ {int sideflags; TYPE_5__ eta; TYPE_4__ bump; TYPE_3__ glossiness; TYPE_2__ diffuse; TYPE_1__ color; } ;
typedef TYPE_6__ lwSurface ;


 TYPE_6__* _pico_calloc (int,int) ;

lwSurface *lwDefaultSurface( void ){
 lwSurface *surf;

 surf = _pico_calloc( 1, sizeof( lwSurface ) );
 if ( !surf ) {
  return ((void*)0);
 }

 surf->color.rgb[ 0 ] = 0.78431f;
 surf->color.rgb[ 1 ] = 0.78431f;
 surf->color.rgb[ 2 ] = 0.78431f;
 surf->diffuse.val = 1.0f;
 surf->glossiness.val = 0.4f;
 surf->bump.val = 1.0f;
 surf->eta.val = 1.0f;
 surf->sideflags = 1;

 return surf;
}
