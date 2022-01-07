
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ivalue; int svalue; } ;
struct TYPE_5__ {TYPE_1__ value; int key; } ;
typedef scalar_t__ GRawDataType ;
typedef TYPE_2__ GRawDataItem ;
typedef int GModule ;


 scalar_t__ INTEGER ;
 scalar_t__ STRING ;
 char* ht_get_datamap (int ,int ) ;
 int ht_get_hits (int ,int ) ;
 char* xstrdup (int ) ;

__attribute__((used)) static int
set_data_hits_keys (GModule module, GRawDataItem item, GRawDataType type,
                    char **data, int *hits)
{
  if (type == INTEGER) {
    if (!(*data = ht_get_datamap (module, item.key)))
      return 1;
    *hits = item.value.ivalue;
  } else if (type == STRING) {
    if (!(*hits = ht_get_hits (module, item.key)))
      return 1;
    *data = xstrdup (item.value.svalue);
  }
  return 0;
}
