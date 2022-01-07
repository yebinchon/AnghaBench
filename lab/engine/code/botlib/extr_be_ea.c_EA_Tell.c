
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* BotClientCommand ) (int,int ) ;} ;


 TYPE_1__ botimport ;
 int stub1 (int,int ) ;
 int va (char*,int,char*) ;

void EA_Tell(int client, int clientto, char *str)
{
 botimport.BotClientCommand(client, va("tell %d, %s", clientto, str));
}
