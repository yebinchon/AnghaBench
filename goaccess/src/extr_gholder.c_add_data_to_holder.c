
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int idx; int module; } ;
struct TYPE_7__ {int (* holder_callback ) (TYPE_2__*) ;} ;
typedef int GRawDataType ;
typedef int GRawDataItem ;
typedef TYPE_1__ GPanel ;
typedef TYPE_2__ GHolder ;


 int set_data_hits_keys (int ,int ,int ,char**,int*) ;
 int set_data_holder_metrics (int ,TYPE_2__*,char*,int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
add_data_to_holder (GRawDataItem item, GHolder * h, GRawDataType type,
                    const GPanel * panel)
{
  char *data = ((void*)0);
  int hits = 0;

  if (set_data_hits_keys (h->module, item, type, &data, &hits) == 1)
    return;

  set_data_holder_metrics (item, h, data, hits);
  if (panel->holder_callback)
    panel->holder_callback (h);

  h->idx++;
}
