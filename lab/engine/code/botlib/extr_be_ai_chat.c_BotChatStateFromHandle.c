
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bot_chatstate_t ;
struct TYPE_2__ {int (* Print ) (int ,char*,int) ;} ;


 int MAX_CLIENTS ;
 int PRT_FATAL ;
 int ** botchatstates ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,int) ;

bot_chatstate_t *BotChatStateFromHandle(int handle)
{
 if (handle <= 0 || handle > MAX_CLIENTS)
 {
  botimport.Print(PRT_FATAL, "chat state handle %d out of range\n", handle);
  return ((void*)0);
 }
 if (!botchatstates[handle])
 {
  botimport.Print(PRT_FATAL, "invalid chat state %d\n", handle);
  return ((void*)0);
 }
 return botchatstates[handle];
}
