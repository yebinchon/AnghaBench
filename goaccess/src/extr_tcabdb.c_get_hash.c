
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* metrics; } ;
struct TYPE_3__ {scalar_t__ metric; void* store; } ;
typedef TYPE_1__ GTCStorageMetric ;
typedef scalar_t__ GSMetric ;
typedef size_t GModule ;


 int GSMTRC_TOTAL ;
 TYPE_2__* tc_storage ;

__attribute__((used)) static void *
get_hash (GModule module, GSMetric metric)
{
  void *hash = ((void*)0);
  int i;
  GTCStorageMetric mtrc;

  if (!tc_storage)
    return ((void*)0);

  for (i = 0; i < GSMTRC_TOTAL; i++) {
    mtrc = tc_storage[module].metrics[i];
    if (mtrc.metric != metric)
      continue;
    hash = mtrc.store;
    break;
  }

  return hash;
}
