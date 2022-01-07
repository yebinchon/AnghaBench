
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time; int zoomTime; scalar_t__ zoomed; } ;


 TYPE_1__ cg ;
 scalar_t__ qfalse ;

void CG_ZoomUp_f( void ) {
 if ( !cg.zoomed ) {
  return;
 }
 cg.zoomed = qfalse;
 cg.zoomTime = cg.time;
}
