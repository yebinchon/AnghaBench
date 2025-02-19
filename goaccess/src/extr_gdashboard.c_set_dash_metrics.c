
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_21__ ;
typedef struct TYPE_27__ TYPE_20__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


struct TYPE_36__ {int nts; } ;
struct TYPE_35__ {void* sts; } ;
struct TYPE_34__ {int nts; } ;
struct TYPE_33__ {void* sts; } ;
struct TYPE_32__ {int nts; } ;
struct TYPE_31__ {void* sts; } ;
struct TYPE_30__ {int nbw; } ;
struct TYPE_29__ {int sbw; } ;
struct TYPE_28__ {int serve_usecs; scalar_t__ append_protocol; scalar_t__ append_method; } ;
struct TYPE_27__ {TYPE_8__ maxts; TYPE_6__ cumts; TYPE_4__ avgts; scalar_t__ protocol; scalar_t__ method; int data; TYPE_2__ bw; void* visitors_perc; int visitors; void* hits_perc; int hits; } ;
struct TYPE_23__ {int max_visitors; int max_hits; } ;
struct TYPE_26__ {int idx_data; TYPE_11__ meta; TYPE_12__* data; } ;
struct TYPE_25__ {TYPE_1__* module; } ;
struct TYPE_24__ {int is_subitem; TYPE_20__* metrics; } ;
struct TYPE_22__ {char* data; TYPE_9__ maxts; TYPE_7__ cumts; TYPE_5__ avgts; scalar_t__ protocol; scalar_t__ method; TYPE_3__ bw; int visitors; int hits; } ;
typedef size_t GModule ;
typedef TYPE_10__ GMetrics ;
typedef TYPE_11__ GDashMeta ;
typedef TYPE_12__ GDashData ;
typedef TYPE_13__ GDash ;


 TYPE_21__ conf ;
 int filesize_str (int ) ;
 int free (char*) ;
 void* get_percentage (int ,int ) ;
 TYPE_20__* new_gmetrics () ;
 char* render_child_node (char*) ;
 int set_max_values (TYPE_11__*,TYPE_10__*) ;
 int set_metrics_len (TYPE_11__*,TYPE_12__*) ;
 void* usecs_to_str (int ) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
set_dash_metrics (GDash ** dash, GMetrics * metrics, GModule module,
                  int is_subitem)
{
  GDashData *idata = ((void*)0);
  GDashMeta *meta = ((void*)0);
  char *data = ((void*)0);
  int *idx;

  if (!metrics->data)
    return;

  idx = &(*dash)->module[module].idx_data;
  idata = &(*dash)->module[module].data[(*idx)];
  meta = &(*dash)->module[module].meta;

  idata->metrics = new_gmetrics ();
  idata->is_subitem = is_subitem;

  data = is_subitem ? render_child_node (metrics->data) : metrics->data;


  set_max_values (meta, metrics);

  idata->metrics->hits = metrics->hits;
  idata->metrics->hits_perc = get_percentage (meta->max_hits, metrics->hits);
  idata->metrics->visitors = metrics->visitors;
  idata->metrics->visitors_perc =
    get_percentage (meta->max_visitors, metrics->visitors);
  idata->metrics->bw.sbw = filesize_str (metrics->bw.nbw);
  idata->metrics->data = xstrdup (data);

  if (conf.append_method && metrics->method)
    idata->metrics->method = metrics->method;
  if (conf.append_protocol && metrics->protocol)
    idata->metrics->protocol = metrics->protocol;

  if (!conf.serve_usecs)
    goto out;

  idata->metrics->avgts.sts = usecs_to_str (metrics->avgts.nts);
  idata->metrics->cumts.sts = usecs_to_str (metrics->cumts.nts);
  idata->metrics->maxts.sts = usecs_to_str (metrics->maxts.nts);

out:
  if (is_subitem)
    free (data);

  set_metrics_len (meta, idata);

  (*idx)++;
}
