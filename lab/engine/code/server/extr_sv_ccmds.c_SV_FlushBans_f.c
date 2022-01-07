
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; } ;


 int Com_Printf (char*) ;
 int SV_WriteBans () ;
 TYPE_1__* com_sv_running ;
 scalar_t__ serverBansCount ;

__attribute__((used)) static void SV_FlushBans_f(void)
{

 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 serverBansCount = 0;


 SV_WriteBans();

 Com_Printf("All bans and exceptions have been deleted.\n");
}
