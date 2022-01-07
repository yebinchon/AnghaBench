
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* vieworg; } ;
struct TYPE_4__ {scalar_t__* refdefViewAngles; TYPE_1__ refdef; } ;


 int CG_Printf (char*,int,int,int,int) ;
 size_t YAW ;
 TYPE_2__ cg ;

__attribute__((used)) static void CG_Viewpos_f (void) {
 CG_Printf ("(%i %i %i) : %i\n", (int)cg.refdef.vieworg[0],
  (int)cg.refdef.vieworg[1], (int)cg.refdef.vieworg[2],
  (int)cg.refdefViewAngles[YAW]);
}
