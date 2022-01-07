
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ format_id; } ;


 int GIT_HASH_NALGOS ;
 int GIT_HASH_UNKNOWN ;
 TYPE_1__* hash_algos ;

int hash_algo_by_id(uint32_t format_id)
{
 int i;
 for (i = 1; i < GIT_HASH_NALGOS; i++)
  if (format_id == hash_algos[i].format_id)
   return i;
 return GIT_HASH_UNKNOWN;
}
