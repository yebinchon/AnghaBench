
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int CSTM_COLORS ;
 int str2enum (int ,int ,char const*) ;

__attribute__((used)) static int
get_color_item_enum (const char *str)
{
  return str2enum (CSTM_COLORS, ARRAY_SIZE (CSTM_COLORS), str);
}
