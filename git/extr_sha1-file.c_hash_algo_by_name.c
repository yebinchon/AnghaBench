
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;


 int GIT_HASH_NALGOS ;
 int GIT_HASH_UNKNOWN ;
 TYPE_1__* hash_algos ;
 int strcmp (char const*,int ) ;

int hash_algo_by_name(const char *name)
{
 int i;
 if (!name)
  return GIT_HASH_UNKNOWN;
 for (i = 1; i < GIT_HASH_NALGOS; i++)
  if (!strcmp(name, hash_algos[i].name))
   return i;
 return GIT_HASH_UNKNOWN;
}
