
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ json_pretty_print; } ;
struct TYPE_4__ {int redraw_expand; int chart_reverse; int chart_type; int chart_lbl; int chart_key; } ;
typedef TYPE_1__ GHTMLPlot ;
typedef int GChart ;
typedef int FILE ;


 int chart2str (int ) ;
 TYPE_3__ conf ;
 int fpclose_obj (int *,int,int) ;
 int fpopen_obj_attr (int *,char*,int) ;
 int fpskeyival (int *,char*,int ,int,int ) ;
 int fpskeysval (int *,char*,int ,int,int ) ;
 int print_d3_chart_def (int *,int *,int,int) ;

__attribute__((used)) static void
print_plot_def (FILE * fp, const GHTMLPlot plot, GChart * chart, int n, int sp)
{
  int isp = 0, iisp = 0;


  if (conf.json_pretty_print)
    isp = sp + 1, iisp = sp + 2;

  fpskeysval (fp, "className", plot.chart_key, isp, 0);
  fpskeysval (fp, "label", plot.chart_lbl, isp, 0);
  fpskeysval (fp, "chartType", chart2str (plot.chart_type), isp, 0);
  fpskeyival (fp, "chartReverse", plot.chart_reverse, isp, 0);
  fpskeyival (fp, "redrawOnExpand", plot.redraw_expand, isp, 0);


  fpopen_obj_attr (fp, "d3", isp);

  print_d3_chart_def (fp, chart, n, iisp);

  fpclose_obj (fp, isp, 1);
}
