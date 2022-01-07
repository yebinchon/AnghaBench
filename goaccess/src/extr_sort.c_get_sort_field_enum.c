
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int FIELD ;
 int str2enum (int ,int ,char const*) ;

int
get_sort_field_enum (const char *str)
{
  return str2enum (FIELD, ARRAY_SIZE (FIELD), str);
}
