
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int id; int data; } ;
typedef TYPE_1__ GMetrics ;


 TYPE_1__* new_gmetrics () ;
 int xstrdup (char*) ;

__attribute__((used)) static int
set_host_child_metrics (char *data, uint8_t id, GMetrics ** nmetrics)
{
  GMetrics *metrics;

  metrics = new_gmetrics ();
  metrics->data = xstrdup (data);
  metrics->id = id;
  *nmetrics = metrics;

  return 0;
}
