
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int idx; scalar_t__ sub_items_size; int module; TYPE_1__* items; } ;
struct TYPE_5__ {int metrics; } ;
typedef int GPercTotals ;
typedef int GMetrics ;
typedef TYPE_2__ GHolder ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int free (int *) ;
 char* module_to_id (int ) ;
 int print_csv_metric_block (int *,int *) ;
 int print_csv_sub_items (int *,TYPE_2__*,int,int ) ;
 int set_data_metrics (int ,int **,int ) ;

__attribute__((used)) static void
print_csv_data (FILE * fp, GHolder * h, GPercTotals totals)
{
  GMetrics *nmetrics;
  int i;

  for (i = 0; i < h->idx; i++) {
    set_data_metrics (h->items[i].metrics, &nmetrics, totals);

    fprintf (fp, "\"%d\",", i);
    fprintf (fp, ",");
    fprintf (fp, "\"%s\",", module_to_id (h->module));


    print_csv_metric_block (fp, nmetrics);

    if (h->sub_items_size)
      print_csv_sub_items (fp, h, i, totals);

    free (nmetrics);
  }
}
