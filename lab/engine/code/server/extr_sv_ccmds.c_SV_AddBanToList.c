
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ type; } ;
struct TYPE_14__ {int subnet; scalar_t__ isexception; TYPE_3__ ip; } ;
typedef TYPE_2__ serverBan_t ;
typedef scalar_t__ qboolean ;
typedef TYPE_3__ netadr_t ;
struct TYPE_13__ {TYPE_3__ remoteAddress; } ;
struct TYPE_16__ {TYPE_1__ netchan; } ;
typedef TYPE_4__ client_t ;
typedef int addy2 ;
struct TYPE_17__ {int integer; } ;


 int ARRAY_LEN (TYPE_2__*) ;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 scalar_t__ NA_IP ;
 scalar_t__ NA_IP6 ;
 int NET_ADDRSTRMAXLEN ;
 int NET_AdrToString (TYPE_3__) ;
 scalar_t__ NET_CompareBaseAdrMask (TYPE_3__,TYPE_3__,int) ;
 int Q_strncpyz (char*,int ,int) ;
 int SV_DelBanEntryFromList (int) ;
 TYPE_4__* SV_GetPlayerByNum () ;
 scalar_t__ SV_ParseCIDRNotation (TYPE_3__*,int*,char*) ;
 int SV_WriteBans () ;
 int atoi (char*) ;
 TYPE_6__* com_sv_running ;
 TYPE_2__* serverBans ;
 int serverBansCount ;
 scalar_t__ strchr (char*,char) ;

__attribute__((used)) static void SV_AddBanToList(qboolean isexception)
{
 char *banstring;
 char addy2[NET_ADDRSTRMAXLEN];
 netadr_t ip;
 int index, argc, mask;
 serverBan_t *curban;


 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 argc = Cmd_Argc();

 if(argc < 2 || argc > 3)
 {
  Com_Printf ("Usage: %s (ip[/subnet] | clientnum [subnet])\n", Cmd_Argv(0));
  return;
 }

 if(serverBansCount >= ARRAY_LEN(serverBans))
 {
  Com_Printf ("Error: Maximum number of bans/exceptions exceeded.\n");
  return;
 }

 banstring = Cmd_Argv(1);

 if(strchr(banstring, '.') || strchr(banstring, ':'))
 {


  if(SV_ParseCIDRNotation(&ip, &mask, banstring))
  {
   Com_Printf("Error: Invalid address %s\n", banstring);
   return;
  }
 }
 else
 {
  client_t *cl;



  cl = SV_GetPlayerByNum();

  if(!cl)
  {
   Com_Printf("Error: Playernum %s does not exist.\n", Cmd_Argv(1));
   return;
  }

  ip = cl->netchan.remoteAddress;

  if(argc == 3)
  {
   mask = atoi(Cmd_Argv(2));

   if(ip.type == NA_IP)
   {
    if(mask < 1 || mask > 32)
     mask = 32;
   }
   else
   {
    if(mask < 1 || mask > 128)
     mask = 128;
   }
  }
  else
   mask = (ip.type == NA_IP6) ? 128 : 32;
 }

 if(ip.type != NA_IP && ip.type != NA_IP6)
 {
  Com_Printf("Error: Can ban players connected via the internet only.\n");
  return;
 }


 for(index = 0; index < serverBansCount; index++)
 {
  curban = &serverBans[index];

  if(curban->subnet <= mask)
  {
   if((curban->isexception || !isexception) && NET_CompareBaseAdrMask(curban->ip, ip, curban->subnet))
   {
    Q_strncpyz(addy2, NET_AdrToString(ip), sizeof(addy2));

    Com_Printf("Error: %s %s/%d supersedes %s %s/%d\n", curban->isexception ? "Exception" : "Ban",
        NET_AdrToString(curban->ip), curban->subnet,
        isexception ? "exception" : "ban", addy2, mask);
    return;
   }
  }
  if(curban->subnet >= mask)
  {
   if(!curban->isexception && isexception && NET_CompareBaseAdrMask(curban->ip, ip, mask))
   {
    Q_strncpyz(addy2, NET_AdrToString(curban->ip), sizeof(addy2));

    Com_Printf("Error: %s %s/%d supersedes already existing %s %s/%d\n", isexception ? "Exception" : "Ban",
        NET_AdrToString(ip), mask,
        curban->isexception ? "exception" : "ban", addy2, curban->subnet);
    return;
   }
  }
 }


 index = 0;
 while(index < serverBansCount)
 {
  curban = &serverBans[index];

  if(curban->subnet > mask && (!curban->isexception || isexception) && NET_CompareBaseAdrMask(curban->ip, ip, mask))
   SV_DelBanEntryFromList(index);
  else
   index++;
 }

 serverBans[serverBansCount].ip = ip;
 serverBans[serverBansCount].subnet = mask;
 serverBans[serverBansCount].isexception = isexception;

 serverBansCount++;

 SV_WriteBans();

 Com_Printf("Added %s: %s/%d\n", isexception ? "ban exception" : "ban",
     NET_AdrToString(ip), mask);
}
