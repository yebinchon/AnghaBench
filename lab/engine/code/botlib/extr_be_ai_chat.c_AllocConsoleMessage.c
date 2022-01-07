
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * prev; struct TYPE_4__* next; } ;
typedef TYPE_1__ bot_consolemessage_t ;


 TYPE_1__* freeconsolemessages ;

bot_consolemessage_t *AllocConsoleMessage(void)
{
 bot_consolemessage_t *message;
 message = freeconsolemessages;
 if (freeconsolemessages) freeconsolemessages = freeconsolemessages->next;
 if (freeconsolemessages) freeconsolemessages->prev = ((void*)0);
 return message;
}
