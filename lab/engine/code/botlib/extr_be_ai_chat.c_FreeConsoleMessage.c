
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef TYPE_1__ bot_consolemessage_t ;


 TYPE_1__* freeconsolemessages ;

void FreeConsoleMessage(bot_consolemessage_t *message)
{
 if (freeconsolemessages) freeconsolemessages->prev = message;
 message->prev = ((void*)0);
 message->next = freeconsolemessages;
 freeconsolemessages = message;
}
