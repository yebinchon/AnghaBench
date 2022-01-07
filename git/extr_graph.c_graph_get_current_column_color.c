
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct git_graph {unsigned short default_column_color; TYPE_2__* revs; } ;
struct TYPE_3__ {int use_color; } ;
struct TYPE_4__ {TYPE_1__ diffopt; } ;


 unsigned short column_colors_max ;
 int want_color (int ) ;

__attribute__((used)) static unsigned short graph_get_current_column_color(const struct git_graph *graph)
{
 if (!want_color(graph->revs->diffopt.use_color))
  return column_colors_max;
 return graph->default_column_color;
}
