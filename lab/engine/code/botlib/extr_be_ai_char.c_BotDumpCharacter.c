
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* c; int skill; int filename; } ;
typedef TYPE_3__ bot_character_t ;
struct TYPE_5__ {int string; int _float; int integer; } ;
struct TYPE_6__ {int type; TYPE_1__ value; } ;





 int Log_Write (char*,...) ;
 int MAX_CHARACTERISTICS ;

void BotDumpCharacter(bot_character_t *ch)
{
 int i;

 Log_Write("%s\n", ch->filename);
 Log_Write("skill %.1f\n", ch->skill);
 Log_Write("{\n");
 for (i = 0; i < MAX_CHARACTERISTICS; i++)
 {
  switch(ch->c[i].type)
  {
   case 129: Log_Write(" %4d %d\n", i, ch->c[i].value.integer); break;
   case 130: Log_Write(" %4d %f\n", i, ch->c[i].value._float); break;
   case 128: Log_Write(" %4d %s\n", i, ch->c[i].value.string); break;
  }
 }
 Log_Write("}\n");
}
