
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ type; int idx; } ;
typedef scalar_t__ GRawDataType ;
typedef TYPE_1__ GRawData ;
typedef int GModule ;


 scalar_t__ INTEGER ;
 int MTRC_DATAMAP ;
 int MTRC_HITS ;
 scalar_t__ STRING ;

 int data_iter_generic ;
 void* get_hash (int,int ) ;
 int ht_get_size (void*) ;
 TYPE_1__* init_new_raw_data (int,int ) ;
 int sort_raw_num_data (TYPE_1__*,int ) ;
 int sort_raw_str_data (TYPE_1__*,int ) ;
 int tc_db_foreach (void*,int ,TYPE_1__*) ;

GRawData *
parse_raw_data (GModule module)
{
  GRawData *raw_data;
  GRawDataType type;
  uint32_t ht_size = 0;
  void *hash = ((void*)0);

  switch (module) {
  case 128:
    hash = get_hash (module, MTRC_DATAMAP);
    type = STRING;
    break;
  default:
    hash = get_hash (module, MTRC_HITS);
    type = INTEGER;
  }

  if (!hash)
    return ((void*)0);

  ht_size = ht_get_size (hash);
  raw_data = init_new_raw_data (module, ht_size);
  raw_data->type = type;

  tc_db_foreach (hash, data_iter_generic, raw_data);
  if (raw_data->type == STRING) {
    sort_raw_str_data (raw_data, raw_data->idx);
  } else {
    sort_raw_num_data (raw_data, raw_data->idx);
  }

  return raw_data;
}
