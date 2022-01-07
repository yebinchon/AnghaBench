
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* metrics; } ;
struct TYPE_3__ {scalar_t__ metric; int type; void* su64; void* igsl; void* ss32; void* si32; void* iu64; void* is32; void* ii32; } ;
typedef scalar_t__ GSMetric ;
typedef size_t GModule ;
typedef TYPE_1__ GKHashMetric ;


 int GSMTRC_TOTAL ;







 TYPE_2__* gkh_storage ;

__attribute__((used)) static void *
get_hash (GModule module, GSMetric metric)
{
  void *hash = ((void*)0);
  int i;
  GKHashMetric mtrc;

  for (i = 0; i < GSMTRC_TOTAL; i++) {
    if (hash != ((void*)0))
      break;

    mtrc = gkh_storage[module].metrics[i];
    if (mtrc.metric != metric)
      continue;


    switch (mtrc.type) {
    case 133:
      hash = mtrc.ii32;
      break;
    case 132:
      hash = mtrc.is32;
      break;
    case 131:
      hash = mtrc.iu64;
      break;
    case 130:
      hash = mtrc.si32;
      break;
    case 129:
      hash = mtrc.ss32;
      break;
    case 134:
      hash = mtrc.igsl;
      break;
    case 128:
      hash = mtrc.su64;
      break;
    }
  }

  return hash;
}
