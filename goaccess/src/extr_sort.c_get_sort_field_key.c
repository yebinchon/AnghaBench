
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t GSortField ;



const char *
get_sort_field_key (GSortField field)
{
  static const char *field2key[][2] = {
    {"BY_HITS", "hits"},
    {"BY_VISITORS", "visitors"},
    {"BY_DATA", "data"},
    {"BY_BW", "bytes"},
    {"BY_AVGTS", "avgts"},
    {"BY_CUMTS", "cumts"},
    {"BY_MAXTS", "maxts"},
    {"BY_PROT", "protocol"},
    {"BY_MTHD", "method"},
  };

  return field2key[field][1];
}
