
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float fraction; int contents; int surfaceFlags; } ;
struct TYPE_8__ {TYPE_1__ trace; } ;
typedef TYPE_2__ traceWork_t ;
struct TYPE_9__ {int contents; int surfaceFlags; int pc; } ;
typedef TYPE_3__ cPatch_t ;


 int CM_TraceThroughPatchCollide (TYPE_2__*,int ) ;
 int c_patch_traces ;

void CM_TraceThroughPatch( traceWork_t *tw, cPatch_t *patch ) {
 float oldFrac;

 c_patch_traces++;

 oldFrac = tw->trace.fraction;

 CM_TraceThroughPatchCollide( tw, patch->pc );

 if ( tw->trace.fraction < oldFrac ) {
  tw->trace.surfaceFlags = patch->surfaceFlags;
  tw->trace.contents = patch->contents;
 }
}
