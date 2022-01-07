
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ isexception; int subnet; int ip; } ;
typedef TYPE_1__ serverBan_t ;
typedef scalar_t__ qboolean ;
typedef int netadr_t ;
struct TYPE_5__ {int integer; } ;


 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int NET_AdrToString (int ) ;
 scalar_t__ NET_CompareBaseAdrMask (int ,int ,int) ;
 int SV_DelBanEntryFromList (int) ;
 scalar_t__ SV_ParseCIDRNotation (int *,int*,char*) ;
 int SV_WriteBans () ;
 int atoi (char*) ;
 TYPE_3__* com_sv_running ;
 TYPE_1__* serverBans ;
 int serverBansCount ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static void SV_DelBanFromList(qboolean isexception)
{
 int index, count = 0, todel, mask;
 netadr_t ip;
 char *banstring;


 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 if(Cmd_Argc() != 2)
 {
  Com_Printf ("Usage: %s (ip[/subnet] | num)\n", Cmd_Argv(0));
  return;
 }

 banstring = Cmd_Argv(1);

 if(strchr(banstring, '.') || strchr(banstring, ':'))
 {
  serverBan_t *curban;

  if(SV_ParseCIDRNotation(&ip, &mask, banstring))
  {
   Com_Printf("Error: Invalid address %s\n", banstring);
   return;
  }

  index = 0;

  while(index < serverBansCount)
  {
   curban = &serverBans[index];

   if(curban->isexception == isexception &&
      curban->subnet >= mask &&
      NET_CompareBaseAdrMask(curban->ip, ip, mask))
   {
    Com_Printf("Deleting %s %s/%d\n",
        isexception ? "exception" : "ban",
        NET_AdrToString(curban->ip), curban->subnet);

    SV_DelBanEntryFromList(index);
   }
   else
    index++;
  }
 }
 else
 {
  todel = atoi(Cmd_Argv(1));

  if(todel < 1 || todel > serverBansCount)
  {
   Com_Printf("Error: Invalid ban number given\n");
   return;
  }

  for(index = 0; index < serverBansCount; index++)
  {
   if(serverBans[index].isexception == isexception)
   {
    count++;

    if(count == todel)
    {
     Com_Printf("Deleting %s %s/%d\n",
        isexception ? "exception" : "ban",
        NET_AdrToString(serverBans[index].ip), serverBans[index].subnet);

     SV_DelBanEntryFromList(index);

     break;
    }
   }
  }
 }

 SV_WriteBans();
}
