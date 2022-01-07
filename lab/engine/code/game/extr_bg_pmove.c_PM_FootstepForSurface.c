
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int surfaceFlags; } ;
struct TYPE_4__ {TYPE_1__ groundTrace; } ;


 int EV_FOOTSTEP ;
 int EV_FOOTSTEP_METAL ;
 int SURF_METALSTEPS ;
 int SURF_NOSTEPS ;
 TYPE_2__ pml ;

__attribute__((used)) static int PM_FootstepForSurface( void ) {
 if ( pml.groundTrace.surfaceFlags & SURF_NOSTEPS ) {
  return 0;
 }
 if ( pml.groundTrace.surfaceFlags & SURF_METALSTEPS ) {
  return EV_FOOTSTEP_METAL;
 }
 return EV_FOOTSTEP;
}
