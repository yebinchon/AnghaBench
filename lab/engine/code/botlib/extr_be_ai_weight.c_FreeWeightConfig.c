
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int weightconfig_t ;


 int FreeWeightConfig2 (int *) ;
 int LibVarGetValue (char*) ;

void FreeWeightConfig(weightconfig_t *config)
{
 if (!LibVarGetValue("bot_reloadcharacters")) return;
 FreeWeightConfig2(config);
}
