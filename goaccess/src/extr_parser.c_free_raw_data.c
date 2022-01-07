
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* items; } ;
typedef TYPE_1__ GRawData ;


 scalar_t__ STRING ;
 int free (TYPE_1__*) ;
 int free_raw_data_str_value (TYPE_1__*) ;

void
free_raw_data (GRawData * raw_data)
{




  free (raw_data->items);
  free (raw_data);
}
