
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* str; } ;
typedef size_t GSortField ;


 TYPE_1__* FIELD ;

const char *
get_sort_field_str (GSortField field)
{
  return FIELD[field].str;
}
