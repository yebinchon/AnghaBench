
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_accu_t ;


 TYPE_1__* AllocWindingAccu (int) ;
 int Error (char*) ;
 int FreeWindingAccu (TYPE_1__*) ;
 int VectorCopyAccu (int ,int ) ;

winding_accu_t *CopyWindingAccuIncreaseSizeAndFreeOld( winding_accu_t *w ){
 int i;
 winding_accu_t *c;

 if ( !w ) {
  Error( "CopyWindingAccuIncreaseSizeAndFreeOld: winding is NULL" );
 }

 c = AllocWindingAccu( w->numpoints + 1 );
 c->numpoints = w->numpoints;
 for ( i = 0; i < c->numpoints; i++ )
 {
  VectorCopyAccu( w->p[i], c->p[i] );
 }
 FreeWindingAccu( w );
 return c;
}
