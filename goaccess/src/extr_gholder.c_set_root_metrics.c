
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_14__ {int nbw; } ;
struct TYPE_13__ {int nts; } ;
struct TYPE_12__ {int nts; } ;
struct TYPE_11__ {int nts; } ;
struct TYPE_16__ {char* data; int hits; int visitors; TYPE_4__ bw; TYPE_3__ maxts; TYPE_2__ cumts; TYPE_1__ avgts; } ;
struct TYPE_15__ {int key; } ;
typedef int GRawDataType ;
typedef TYPE_5__ GRawDataItem ;
typedef int GModule ;
typedef TYPE_6__ GMetrics ;


 int ht_get_bw (int ,int ) ;
 int ht_get_cumts (int ,int ) ;
 int ht_get_maxts (int ,int ) ;
 int ht_get_visitors (int ,int ) ;
 TYPE_6__* new_gmetrics () ;
 int set_data_hits_keys (int ,TYPE_5__,int ,char**,int*) ;

__attribute__((used)) static int
set_root_metrics (GRawDataItem item, GRawDataType type, GModule module,
                  GMetrics ** nmetrics)
{
  GMetrics *metrics;
  char *data = ((void*)0);
  uint64_t bw = 0, cumts = 0, maxts = 0;
  int hits = 0, visitors = 0;

  if (set_data_hits_keys (module, item, type, &data, &hits) == 1)
    return 1;

  bw = ht_get_bw (module, item.key);
  cumts = ht_get_cumts (module, item.key);
  maxts = ht_get_maxts (module, item.key);
  visitors = ht_get_visitors (module, item.key);

  metrics = new_gmetrics ();
  metrics->avgts.nts = cumts / hits;
  metrics->cumts.nts = cumts;
  metrics->maxts.nts = maxts;
  metrics->bw.nbw = bw;
  metrics->data = data;
  metrics->hits = hits;
  metrics->visitors = visitors;
  *nmetrics = metrics;

  return 0;
}
