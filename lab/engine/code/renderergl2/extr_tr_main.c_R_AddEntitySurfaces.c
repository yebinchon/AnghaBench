
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int integer; } ;
struct TYPE_4__ {int num_entities; } ;
struct TYPE_5__ {TYPE_1__ refdef; } ;


 int R_AddEntitySurface (int) ;
 TYPE_3__* r_drawentities ;
 TYPE_2__ tr ;

void R_AddEntitySurfaces (void) {
 int i;

 if ( !r_drawentities->integer ) {
  return;
 }

 for ( i = 0; i < tr.refdef.num_entities; i++)
  R_AddEntitySurface(i);
}
