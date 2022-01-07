
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int surfaceType_t ;
struct TYPE_6__ {TYPE_2__* currentEntity; } ;
struct TYPE_4__ {int reType; } ;
struct TYPE_5__ {TYPE_1__ e; } ;


 int RB_SurfaceAxis () ;
 int RB_SurfaceBeam () ;
 int RB_SurfaceLightningBolt () ;
 int RB_SurfaceRailCore () ;
 int RB_SurfaceRailRings () ;
 int RB_SurfaceSprite () ;





 TYPE_3__ backEnd ;

__attribute__((used)) static void RB_SurfaceEntity( surfaceType_t *surfType ) {
 switch( backEnd.currentEntity->e.reType ) {
 case 128:
  RB_SurfaceSprite();
  break;
 case 132:
  RB_SurfaceBeam();
  break;
 case 130:
  RB_SurfaceRailCore();
  break;
 case 129:
  RB_SurfaceRailRings();
  break;
 case 131:
  RB_SurfaceLightningBolt();
  break;
 default:
  RB_SurfaceAxis();
  break;
 }
}
