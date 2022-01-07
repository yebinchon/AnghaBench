
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
struct TYPE_7__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_accu_t ;


 TYPE_1__* AllocWinding (int) ;
 int Error (char*) ;
 int VectorCopyAccuToRegular (int ,int ) ;

winding_t *CopyWindingAccuToRegular( winding_accu_t *w ){
 int i;
 winding_t *c;

 if ( !w ) {
  Error( "CopyWindingAccuToRegular: winding is NULL" );
 }

 c = AllocWinding( w->numpoints );
 c->numpoints = w->numpoints;
 for ( i = 0; i < c->numpoints; i++ )
 {
  VectorCopyAccuToRegular( w->p[i], c->p[i] );
 }
 return c;
}
