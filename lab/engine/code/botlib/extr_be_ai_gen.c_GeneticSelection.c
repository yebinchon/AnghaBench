
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int random () ;

int GeneticSelection(int numranks, float *rankings)
{
 float sum;
 int i, index;

 sum = 0;
 for (i = 0; i < numranks; i++)
 {
  if (rankings[i] < 0) continue;
  sum += rankings[i];
 }
 if (sum > 0)
 {



  for (i = 0; i < numranks; i++)
  {
   if (rankings[i] < 0) continue;
   sum -= rankings[i];
   if (sum <= 0) return i;
  }
 }

 index = random() * numranks;
 for (i = 0; i < numranks; i++)
 {
  if (rankings[index] >= 0) return index;
  index = (index + 1) % numranks;
 }
 return 0;
}
