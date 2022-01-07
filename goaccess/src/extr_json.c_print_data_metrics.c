
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct GPanel_ {int (* subitems ) (int *,TYPE_2__*,int ,int ,int) ;} ;
struct TYPE_7__ {scalar_t__ json_pretty_print; } ;
struct TYPE_6__ {int metrics; } ;
struct TYPE_5__ {int idx; int sub_items_size; TYPE_2__* items; } ;
typedef int GPercTotals ;
typedef int GMetrics ;
typedef int GJSON ;
typedef TYPE_1__ GHolder ;


 TYPE_4__ conf ;
 int free (int *) ;
 int pclose_arr (int *,int,int) ;
 int pclose_obj (int *,int,int) ;
 int popen_arr_attr (int *,char*,int) ;
 int popen_obj (int *,int) ;
 int print_json_block (int *,int *,int) ;
 int set_data_metrics (int ,int **,int ) ;
 int stub1 (int *,TYPE_2__*,int ,int ,int) ;

__attribute__((used)) static void
print_data_metrics (GJSON * json, GHolder * h, GPercTotals totals, int sp,
                    const struct GPanel_ *panel)
{
  GMetrics *nmetrics;
  int i, isp = 0, iisp = 0, iiisp = 0;


  if (conf.json_pretty_print)
    isp = sp + 1, iisp = sp + 2, iiisp = sp + 3;

  popen_arr_attr (json, "data", isp);

  for (i = 0; i < h->idx; i++) {
    set_data_metrics (h->items[i].metrics, &nmetrics, totals);


    popen_obj (json, iisp);

    print_json_block (json, nmetrics, iiisp);

    if (panel->subitems)
      panel->subitems (json, h->items + i, totals, h->sub_items_size, iiisp);

    pclose_obj (json, iisp, (i == h->idx - 1));

    free (nmetrics);
  }
  pclose_arr (json, isp, 1);
}
