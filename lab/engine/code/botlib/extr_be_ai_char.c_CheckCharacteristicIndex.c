
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* c; } ;
typedef TYPE_2__ bot_character_t ;
struct TYPE_7__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_5__ {int type; } ;


 TYPE_2__* BotCharacterFromHandle (int) ;
 int MAX_CHARACTERISTICS ;
 int PRT_ERROR ;
 TYPE_3__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,int) ;

int CheckCharacteristicIndex(int character, int index)
{
 bot_character_t *ch;

 ch = BotCharacterFromHandle(character);
 if (!ch) return qfalse;
 if (index < 0 || index >= MAX_CHARACTERISTICS)
 {
  botimport.Print(PRT_ERROR, "characteristic %d does not exist\n", index);
  return qfalse;
 }
 if (!ch->c[index].type)
 {
  botimport.Print(PRT_ERROR, "characteristic %d is not initialized\n", index);
  return qfalse;
 }
 return qtrue;
}
