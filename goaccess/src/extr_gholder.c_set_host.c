
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int idx; } ;
struct TYPE_7__ {int (* holder_callback ) (TYPE_2__*) ;} ;
typedef int GRawDataItem ;
typedef TYPE_1__ GPanel ;
typedef TYPE_2__ GHolder ;


 int set_data_holder_metrics (int ,TYPE_2__*,int ,int) ;
 int stub1 (TYPE_2__*) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
set_host (GRawDataItem item, GHolder * h, const GPanel * panel, char *data,
          int hits)
{
  set_data_holder_metrics (item, h, xstrdup (data), hits);
  if (panel->holder_callback)
    panel->holder_callback (h);
  h->idx++;
}
