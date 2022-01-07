
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time; int zoomTime; scalar_t__ zoomed; } ;


 TYPE_1__ cg ;
 scalar_t__ qtrue ;

void CG_ZoomDown_f( void ) {
 if ( cg.zoomed ) {
  return;
 }
 cg.zoomed = qtrue;
 cg.zoomTime = cg.time;
}
