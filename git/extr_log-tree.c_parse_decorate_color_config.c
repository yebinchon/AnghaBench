
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOOKUP_CONFIG (int ,char const*) ;
 int color_decorate_slots ;
 int color_parse (char const*,int ) ;
 int config_error_nonbool (char const*) ;
 int * decoration_colors ;

int parse_decorate_color_config(const char *var, const char *slot_name, const char *value)
{
 int slot = LOOKUP_CONFIG(color_decorate_slots, slot_name);
 if (slot < 0)
  return 0;
 if (!value)
  return config_error_nonbool(var);
 return color_parse(value, decoration_colors[slot]);
}
