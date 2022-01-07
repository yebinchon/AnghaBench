
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * metrics; } ;
typedef size_t GModule ;
typedef int GKHashMetric ;


 int GSMTRC_TOTAL ;
 int free_metric_type (int ) ;
 TYPE_1__* gkh_storage ;

__attribute__((used)) static void
free_metrics (GModule module)
{
  int i;
  GKHashMetric mtrc;

  for (i = 0; i < GSMTRC_TOTAL; i++) {
    mtrc = gkh_storage[module].metrics[i];
    free_metric_type (mtrc);
  }
}
