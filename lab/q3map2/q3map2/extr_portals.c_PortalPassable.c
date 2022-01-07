
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_5__ {int compileFlags; TYPE_1__** nodes; int onnode; } ;
typedef TYPE_2__ portal_t ;
struct TYPE_4__ {scalar_t__ planenum; scalar_t__ opaque; } ;


 int C_ANTIPORTAL ;
 int Error (char*) ;
 scalar_t__ PLANENUM_LEAF ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

qboolean PortalPassable( portal_t *p ){

 if ( !p->onnode ) {
  return qfalse;
 }


 if ( p->nodes[ 0 ]->planenum != PLANENUM_LEAF ||
   p->nodes[ 1 ]->planenum != PLANENUM_LEAF ) {
  Error( "Portal_EntityFlood: not a leaf" );
 }


 if ( p->compileFlags & C_ANTIPORTAL ) {
  return qfalse;
 }


 if ( p->nodes[ 0 ]->opaque == qfalse && p->nodes[ 1 ]->opaque == qfalse ) {
  return qtrue;
 }


 return qfalse;
}
