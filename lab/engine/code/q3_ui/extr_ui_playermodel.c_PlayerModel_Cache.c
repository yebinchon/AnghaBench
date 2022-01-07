
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nummodels; scalar_t__* modelnames; } ;


 int PlayerModel_BuildList () ;
 scalar_t__* playermodel_artlist ;
 TYPE_1__ s_playermodel ;
 int trap_R_RegisterShaderNoMip (scalar_t__) ;

void PlayerModel_Cache( void )
{
 int i;

 for( i = 0; playermodel_artlist[i]; i++ ) {
  trap_R_RegisterShaderNoMip( playermodel_artlist[i] );
 }

 PlayerModel_BuildList();
 for( i = 0; i < s_playermodel.nummodels; i++ ) {
  trap_R_RegisterShaderNoMip( s_playermodel.modelnames[i] );
 }
}
