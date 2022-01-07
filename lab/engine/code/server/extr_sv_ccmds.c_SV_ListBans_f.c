
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int subnet; int ip; scalar_t__ isexception; } ;
typedef TYPE_1__ serverBan_t ;
struct TYPE_5__ {int integer; } ;


 int Com_Printf (char*,...) ;
 int NET_AdrToString (int ) ;
 TYPE_3__* com_sv_running ;
 TYPE_1__* serverBans ;
 int serverBansCount ;

__attribute__((used)) static void SV_ListBans_f(void)
{
 int index, count;
 serverBan_t *ban;


 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }


 for(index = count = 0; index < serverBansCount; index++)
 {
  ban = &serverBans[index];
  if(!ban->isexception)
  {
   count++;

   Com_Printf("Ban #%d: %s/%d\n", count,
        NET_AdrToString(ban->ip), ban->subnet);
  }
 }

 for(index = count = 0; index < serverBansCount; index++)
 {
  ban = &serverBans[index];
  if(ban->isexception)
  {
   count++;

   Com_Printf("Except #%d: %s/%d\n", count,
        NET_AdrToString(ban->ip), ban->subnet);
  }
 }
}
