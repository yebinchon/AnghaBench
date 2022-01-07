
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* Print ) (int ,char*) ;} ;


 int Com_Memcpy (float*,float*,int) ;
 int GeneticSelection (int,float*) ;
 int PRT_WARNING ;
 TYPE_1__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;

int GeneticParentsAndChildSelection(int numranks, float *ranks, int *parent1, int *parent2, int *child)
{
 float rankings[256], max;
 int i;

 if (numranks > 256)
 {
  botimport.Print(PRT_WARNING, "GeneticParentsAndChildSelection: too many bots\n");
  *parent1 = *parent2 = *child = 0;
  return qfalse;
 }
 for (max = 0, i = 0; i < numranks; i++)
 {
  if (ranks[i] < 0) continue;
  max++;
 }
 if (max < 3)
 {
  botimport.Print(PRT_WARNING, "GeneticParentsAndChildSelection: too few valid bots\n");
  *parent1 = *parent2 = *child = 0;
  return qfalse;
 }
 Com_Memcpy(rankings, ranks, sizeof(float) * numranks);

 *parent1 = GeneticSelection(numranks, rankings);
 rankings[*parent1] = -1;

 *parent2 = GeneticSelection(numranks, rankings);
 rankings[*parent2] = -1;

 max = 0;
 for (i = 0; i < numranks; i++)
 {
  if (rankings[i] < 0) continue;
  if (rankings[i] > max) max = rankings[i];
 }
 for (i = 0; i < numranks; i++)
 {
  if (rankings[i] < 0) continue;
  rankings[i] = max - rankings[i];
 }

 *child = GeneticSelection(numranks, rankings);
 return qtrue;
}
