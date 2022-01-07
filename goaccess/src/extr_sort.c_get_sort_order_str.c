
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* str; } ;
typedef size_t GSortOrder ;


 TYPE_1__* ORDER ;

const char *
get_sort_order_str (GSortOrder order)
{
  return ORDER[order].str;
}
