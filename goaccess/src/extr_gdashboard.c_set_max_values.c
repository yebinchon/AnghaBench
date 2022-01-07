
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ max_hits; scalar_t__ max_visitors; } ;
struct TYPE_5__ {scalar_t__ hits; scalar_t__ visitors; } ;
typedef TYPE_1__ GMetrics ;
typedef TYPE_2__ GDashMeta ;



__attribute__((used)) static void
set_max_values (GDashMeta * meta, GMetrics * metrics)
{
  if (metrics->hits > meta->max_hits)
    meta->max_hits = metrics->hits;
  if (metrics->visitors > meta->max_visitors)
    meta->max_visitors = metrics->visitors;
}
