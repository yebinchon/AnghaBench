
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GRawData ;
typedef int GModule ;



 int * parse_raw_num_data (int) ;
 int * parse_raw_str_data (int) ;

GRawData *
parse_raw_data (GModule module)
{
  GRawData *raw_data;

  switch (module) {
  case 128:
    raw_data = parse_raw_str_data (module);
    break;
  default:
    raw_data = parse_raw_num_data (module);
  }
  return raw_data;
}
