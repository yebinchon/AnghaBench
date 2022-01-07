
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_17__ ;


struct TYPE_20__ {int module; } ;
struct TYPE_19__ {scalar_t__ sub_graph; scalar_t__ graph; scalar_t__ data; scalar_t__ protocol; scalar_t__ method; scalar_t__ maxts; scalar_t__ cumts; scalar_t__ avgts; scalar_t__ bw; scalar_t__ percent; scalar_t__ visitors; scalar_t__ hits; } ;
struct TYPE_18__ {scalar_t__ append_protocol; scalar_t__ append_method; scalar_t__ serve_usecs; scalar_t__ bandwidth; } ;
typedef TYPE_1__ GOutput ;
typedef int GModule ;
typedef int GDashRender ;
typedef TYPE_2__ GDashModule ;


 TYPE_17__ conf ;
 int get_xpos () ;
 TYPE_1__* output_lookup (int ) ;
 int render_avgts (TYPE_2__*,int ,int*) ;
 int render_bars (TYPE_2__*,int ,int*) ;
 int render_bw (TYPE_2__*,int ,int*) ;
 int render_cumts (TYPE_2__*,int ,int*) ;
 int render_data (TYPE_2__*,int ,int*) ;
 int render_hits (TYPE_2__*,int ,int*) ;
 int render_hits_percent (TYPE_2__*,int ,int*) ;
 int render_maxts (TYPE_2__*,int ,int*) ;
 int render_method (TYPE_2__*,int ,int*) ;
 int render_proto (TYPE_2__*,int ,int*) ;
 int render_visitors (TYPE_2__*,int ,int*) ;
 int render_visitors_percent (TYPE_2__*,int ,int*) ;

__attribute__((used)) static void
render_metrics (GDashModule * data, GDashRender render, int expanded)
{
  int x = get_xpos ();
  GModule module = data->module;
  const GOutput *output = output_lookup (module);


  if (output->hits)
    render_hits (data, render, &x);
  if (output->percent)
    render_hits_percent (data, render, &x);
  if (output->visitors)
    render_visitors (data, render, &x);
  if (output->percent)
    render_visitors_percent (data, render, &x);


  if (conf.bandwidth && output->bw)
    render_bw (data, render, &x);


  if (output->avgts && conf.serve_usecs)
    render_avgts (data, render, &x);
  if (output->cumts && conf.serve_usecs)
    render_cumts (data, render, &x);
  if (output->maxts && conf.serve_usecs)
    render_maxts (data, render, &x);


  if (output->method && conf.append_method)
    render_method (data, render, &x);

  if (output->protocol && conf.append_protocol)
    render_proto (data, render, &x);
  if (output->data)
    render_data (data, render, &x);


  if ((output->graph && !expanded) || (output->sub_graph && expanded))
    render_bars (data, render, &x);
}
