
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int string; struct TYPE_4__* next; } ;
typedef TYPE_1__ bot_stringlist_t ;


 int strcmp (int ,char*) ;

bot_stringlist_t *BotFindStringInList(bot_stringlist_t *list, char *string)
{
 bot_stringlist_t *s;

 for (s = list; s; s = s->next)
 {
  if (!strcmp(s->string, string)) return s;
 }
 return ((void*)0);
}
