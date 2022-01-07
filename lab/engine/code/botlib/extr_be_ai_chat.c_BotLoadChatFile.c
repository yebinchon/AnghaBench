
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bot_ichatdata_t ;
struct TYPE_6__ {scalar_t__ chat; } ;
typedef TYPE_1__ bot_chatstate_t ;
struct TYPE_8__ {int (* Print ) (int ,char*,char*,char*) ;} ;
struct TYPE_7__ {int filename; int chatname; scalar_t__ chat; } ;


 int BLERR_CANNOTLOADICHAT ;
 int BLERR_NOERROR ;
 TYPE_1__* BotChatStateFromHandle (int) ;
 int BotFreeChatFile (int) ;
 scalar_t__ BotLoadInitialChat (char*,char*) ;
 TYPE_2__* GetClearedMemory (int) ;
 int LibVarGetValue (char*) ;
 int MAX_CLIENTS ;
 int PRT_FATAL ;
 int Q_strncpyz (int ,char*,int) ;
 TYPE_3__ botimport ;
 TYPE_2__** ichatdata ;
 scalar_t__ strcmp (char*,int ) ;
 int stub1 (int ,char*,char*,char*) ;
 int stub2 (int ,char*,char*,char*) ;

int BotLoadChatFile(int chatstate, char *chatfile, char *chatname)
{
 bot_chatstate_t *cs;
 int n, avail = 0;

 cs = BotChatStateFromHandle(chatstate);
 if (!cs) return BLERR_CANNOTLOADICHAT;
 BotFreeChatFile(chatstate);

 if (!LibVarGetValue("bot_reloadcharacters"))
 {
  avail = -1;
  for( n = 0; n < MAX_CLIENTS; n++ ) {
   if( !ichatdata[n] ) {
    if( avail == -1 ) {
     avail = n;
    }
    continue;
   }
   if( strcmp( chatfile, ichatdata[n]->filename ) != 0 ) {
    continue;
   }
   if( strcmp( chatname, ichatdata[n]->chatname ) != 0 ) {
    continue;
   }
   cs->chat = ichatdata[n]->chat;

   return BLERR_NOERROR;
  }

  if( avail == -1 ) {
   botimport.Print(PRT_FATAL, "ichatdata table full; couldn't load chat %s from %s\n", chatname, chatfile);
   return BLERR_CANNOTLOADICHAT;
  }
 }

 cs->chat = BotLoadInitialChat(chatfile, chatname);
 if (!cs->chat)
 {
  botimport.Print(PRT_FATAL, "couldn't load chat %s from %s\n", chatname, chatfile);
  return BLERR_CANNOTLOADICHAT;
 }
 if (!LibVarGetValue("bot_reloadcharacters"))
 {
  ichatdata[avail] = GetClearedMemory( sizeof(bot_ichatdata_t) );
  ichatdata[avail]->chat = cs->chat;
  Q_strncpyz( ichatdata[avail]->chatname, chatname, sizeof(ichatdata[avail]->chatname) );
  Q_strncpyz( ichatdata[avail]->filename, chatfile, sizeof(ichatdata[avail]->filename) );
 }

 return BLERR_NOERROR;
}
