
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_3__ {int curvalue; } ;
struct TYPE_4__ {TYPE_1__ punkbuster; } ;


 int Com_Clamp (int ,int,int ) ;
 TYPE_2__ g_arenaservers ;
 int trap_Cvar_VariableValue (char*) ;
 int trap_SetPbClStatus (int) ;

__attribute__((used)) static void Punkbuster_ConfirmEnable( qboolean result ) {
 if (result)
 {
  trap_SetPbClStatus(1);
 }
 g_arenaservers.punkbuster.curvalue = Com_Clamp( 0, 1, trap_Cvar_VariableValue( "cl_punkbuster" ) );
}
