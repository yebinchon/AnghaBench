
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int uint64_t ;
struct TYPE_20__ {size_t idx; TYPE_5__* items; int module; } ;
struct TYPE_19__ {int key; } ;
struct TYPE_18__ {TYPE_10__* metrics; } ;
struct TYPE_17__ {int nts; } ;
struct TYPE_16__ {int nts; } ;
struct TYPE_15__ {int nts; } ;
struct TYPE_14__ {int nbw; } ;
struct TYPE_13__ {scalar_t__ append_protocol; scalar_t__ append_method; } ;
struct TYPE_12__ {int hits; char* data; int visitors; char* method; char* protocol; TYPE_4__ maxts; TYPE_3__ cumts; TYPE_2__ avgts; TYPE_1__ bw; } ;
typedef TYPE_6__ GRawDataItem ;
typedef TYPE_7__ GHolder ;


 TYPE_11__ conf ;
 int ht_get_bw (int ,int ) ;
 int ht_get_cumts (int ,int ) ;
 int ht_get_maxts (int ,int ) ;
 char* ht_get_method (int ,int ) ;
 char* ht_get_protocol (int ,int ) ;
 int ht_get_visitors (int ,int ) ;
 TYPE_10__* new_gmetrics () ;

__attribute__((used)) static void
set_data_holder_metrics (GRawDataItem item, GHolder * h, char *data, int hits)
{
  char *method = ((void*)0), *protocol = ((void*)0);
  int visitors = 0;
  uint64_t bw = 0, cumts = 0, maxts = 0;

  bw = ht_get_bw (h->module, item.key);
  cumts = ht_get_cumts (h->module, item.key);
  maxts = ht_get_maxts (h->module, item.key);
  visitors = ht_get_visitors (h->module, item.key);

  h->items[h->idx].metrics = new_gmetrics ();
  h->items[h->idx].metrics->hits = hits;
  h->items[h->idx].metrics->data = data;
  h->items[h->idx].metrics->visitors = visitors;
  h->items[h->idx].metrics->bw.nbw = bw;
  h->items[h->idx].metrics->avgts.nts = cumts / hits;
  h->items[h->idx].metrics->cumts.nts = cumts;
  h->items[h->idx].metrics->maxts.nts = maxts;

  if (conf.append_method) {
    method = ht_get_method (h->module, item.key);
    h->items[h->idx].metrics->method = method;
  }

  if (conf.append_protocol) {
    protocol = ht_get_protocol (h->module, item.key);
    h->items[h->idx].metrics->protocol = protocol;
  }
}
