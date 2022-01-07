
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rawsz; } ;


 int GIT_HASH_NALGOS ;
 int GIT_HASH_UNKNOWN ;
 TYPE_1__* hash_algos ;

int hash_algo_by_length(int len)
{
 int i;
 for (i = 1; i < GIT_HASH_NALGOS; i++)
  if (len == hash_algos[i].rawsz)
   return i;
 return GIT_HASH_UNKNOWN;
}
