
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t idx; scalar_t__ type; TYPE_2__* items; } ;
struct TYPE_5__ {char* svalue; int ivalue; } ;
struct TYPE_6__ {int key; TYPE_1__ value; } ;
typedef TYPE_3__ GRawData ;


 scalar_t__ STRING ;

__attribute__((used)) static void
set_raw_data (void *key, void *value, GRawData * raw_data)
{
  raw_data->items[raw_data->idx].key = (*(int *) key);
  if (raw_data->type == STRING)
    raw_data->items[raw_data->idx].value.svalue = (char *) value;
  else
    raw_data->items[raw_data->idx].value.ivalue = (*(int *) value);
  raw_data->idx++;
}
