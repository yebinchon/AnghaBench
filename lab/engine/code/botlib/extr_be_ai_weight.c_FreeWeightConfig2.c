
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numweights; TYPE_1__* weights; } ;
typedef TYPE_2__ weightconfig_t ;
struct TYPE_5__ {TYPE_2__* name; int firstseperator; } ;


 int FreeFuzzySeperators_r (int ) ;
 int FreeMemory (TYPE_2__*) ;

void FreeWeightConfig2(weightconfig_t *config)
{
 int i;

 for (i = 0; i < config->numweights; i++)
 {
  FreeFuzzySeperators_r(config->weights[i].firstseperator);
  if (config->weights[i].name) FreeMemory(config->weights[i].name);
 }
 FreeMemory(config);
}
