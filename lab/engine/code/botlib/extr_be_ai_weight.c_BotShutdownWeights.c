
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeWeightConfig2 (int *) ;
 int MAX_WEIGHT_FILES ;
 int ** weightFileList ;

void BotShutdownWeights(void)
{
 int i;

 for( i = 0; i < MAX_WEIGHT_FILES; i++ )
 {
  if (weightFileList[i])
  {
   FreeWeightConfig2(weightFileList[i]);
   weightFileList[i] = ((void*)0);
  }
 }
}
