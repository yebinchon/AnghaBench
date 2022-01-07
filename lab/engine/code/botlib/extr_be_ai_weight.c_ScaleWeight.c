
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int numweights; TYPE_1__* weights; } ;
typedef TYPE_2__ weightconfig_t ;
struct TYPE_4__ {int firstseperator; int name; } ;


 int ScaleFuzzySeperator_r (int ,float) ;
 int strcmp (char*,int ) ;

void ScaleWeight(weightconfig_t *config, char *name, float scale)
{
 int i;

 if (scale < 0) scale = 0;
 else if (scale > 1) scale = 1;
 for (i = 0; i < config->numweights; i++)
 {
  if (!strcmp(name, config->weights[i].name))
  {
   ScaleFuzzySeperator_r(config->weights[i].firstseperator, scale);
   break;
  }
 }
}
