
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* BotClientCommand ) (int,char*) ;} ;


 TYPE_1__ botimport ;
 int stub1 (int,char*) ;

void EA_Command(int client, char *command)
{
 botimport.BotClientCommand(client, command);
}
