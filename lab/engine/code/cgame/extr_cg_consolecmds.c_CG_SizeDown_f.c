
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; } ;


 TYPE_1__ cg_viewsize ;
 int trap_Cvar_Set (char*,int ) ;
 int va (char*,int) ;

__attribute__((used)) static void CG_SizeDown_f (void) {
 trap_Cvar_Set("cg_viewsize", va("%i",(int)(cg_viewsize.integer-10)));
}
