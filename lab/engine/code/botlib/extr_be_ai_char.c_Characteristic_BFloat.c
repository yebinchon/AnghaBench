
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bot_character_t ;
struct TYPE_2__ {int (* Print ) (int ,char*,int,float,float) ;} ;


 int * BotCharacterFromHandle (int) ;
 float Characteristic_Float (int,int) ;
 int PRT_ERROR ;
 TYPE_1__ botimport ;
 int stub1 (int ,char*,int,float,float) ;

float Characteristic_BFloat(int character, int index, float min, float max)
{
 float value;
 bot_character_t *ch;

 ch = BotCharacterFromHandle(character);
 if (!ch) return 0;
 if (min > max)
 {
  botimport.Print(PRT_ERROR, "cannot bound characteristic %d between %f and %f\n", index, min, max);
  return 0;
 }
 value = Characteristic_Float(character, index);
 if (value < min) return min;
 if (value > max) return max;
 return value;
}
