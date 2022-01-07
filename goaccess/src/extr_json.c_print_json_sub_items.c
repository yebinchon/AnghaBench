
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ json_pretty_print; } ;
struct TYPE_8__ {TYPE_1__* sub_list; } ;
struct TYPE_7__ {int metrics; struct TYPE_7__* next; } ;
struct TYPE_6__ {int size; TYPE_2__* head; } ;
typedef TYPE_1__ GSubList ;
typedef TYPE_2__ GSubItem ;
typedef int GPercTotals ;
typedef int GMetrics ;
typedef int GJSON ;
typedef TYPE_3__ GHolderItem ;


 int NL ;
 int TAB ;
 TYPE_5__ conf ;
 int free (int *) ;
 int nlines ;
 int pclose_arr (int *,int,int) ;
 int pclose_obj (int *,int,int) ;
 int pjson (int *,char*,int ,int ,int,int ,int ,int ) ;
 int popen_obj (int *,int) ;
 int print_json_block (int *,int *,int) ;
 int set_data_metrics (int ,int **,int ) ;

__attribute__((used)) static void
print_json_sub_items (GJSON * json, GHolderItem * item, GPercTotals totals,
                      int size, int iisp)
{
  GMetrics *nmetrics;
  GSubItem *iter;
  GSubList *sl = item->sub_list;
  int i = 0, iiisp = 0, iiiisp = 0;


  if (size == 0)
    return;


  if (conf.json_pretty_print)
    iiisp = iisp + 1, iiiisp = iiisp + 1;

  if (sl == ((void*)0))
    return;

  pjson (json, ",%.*s%.*s\"items\": [%.*s", nlines, NL, iisp, TAB, nlines, NL);
  for (iter = sl->head; iter; iter = iter->next, i++) {
    set_data_metrics (iter->metrics, &nmetrics, totals);

    popen_obj (json, iiisp);
    print_json_block (json, nmetrics, iiiisp);
    pclose_obj (json, iiisp, (i == sl->size - 1));
    free (nmetrics);
  }
  pclose_arr (json, iisp, 1);
}
