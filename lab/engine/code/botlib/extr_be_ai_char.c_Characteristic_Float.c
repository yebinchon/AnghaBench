
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* c; } ;
typedef TYPE_3__ bot_character_t ;
struct TYPE_9__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_6__ {float _float; scalar_t__ integer; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ value; } ;


 TYPE_3__* BotCharacterFromHandle (int) ;
 scalar_t__ CT_FLOAT ;
 scalar_t__ CT_INTEGER ;
 int CheckCharacteristicIndex (int,int) ;
 int PRT_ERROR ;
 TYPE_4__ botimport ;
 int stub1 (int ,char*,int) ;

float Characteristic_Float(int character, int index)
{
 bot_character_t *ch;

 ch = BotCharacterFromHandle(character);
 if (!ch) return 0;

 if (!CheckCharacteristicIndex(character, index)) return 0;

 if (ch->c[index].type == CT_INTEGER)
 {
  return (float) ch->c[index].value.integer;
 }

 else if (ch->c[index].type == CT_FLOAT)
 {
  return ch->c[index].value._float;
 }

 else
 {
  botimport.Print(PRT_ERROR, "characteristic %d is not a float\n", index);
  return 0;
 }

}
