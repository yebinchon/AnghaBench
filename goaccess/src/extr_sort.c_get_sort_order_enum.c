
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int ORDER ;
 int str2enum (int ,int ,char const*) ;

int
get_sort_order_enum (const char *str)
{
  return str2enum (ORDER, ARRAY_SIZE (ORDER), str);
}
