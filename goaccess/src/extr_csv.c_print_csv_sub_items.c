
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int module; TYPE_1__* items; } ;
struct TYPE_8__ {int metrics; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_3__* head; } ;
struct TYPE_6__ {TYPE_2__* sub_list; } ;
typedef TYPE_2__ GSubList ;
typedef TYPE_3__ GSubItem ;
typedef int GPercTotals ;
typedef int GMetrics ;
typedef TYPE_4__ GHolder ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int free (int *) ;
 char* module_to_id (int ) ;
 int print_csv_metric_block (int *,int *) ;
 int set_data_metrics (int ,int **,int ) ;

__attribute__((used)) static void
print_csv_sub_items (FILE * fp, GHolder * h, int idx, GPercTotals totals)
{
  GMetrics *nmetrics;
  GSubList *sub_list = h->items[idx].sub_list;
  GSubItem *iter;

  int i = 0;

  if (sub_list == ((void*)0))
    return;

  for (iter = sub_list->head; iter; iter = iter->next, i++) {
    set_data_metrics (iter->metrics, &nmetrics, totals);

    fprintf (fp, "\"%d\",", i);
    fprintf (fp, "\"%d\",", idx);
    fprintf (fp, "\"%s\",", module_to_id (h->module));


    print_csv_metric_block (fp, nmetrics);
    free (nmetrics);
  }
}
