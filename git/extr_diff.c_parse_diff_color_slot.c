
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIFF_CONTEXT ;
 int LOOKUP_CONFIG (int ,char const*) ;
 int color_diff_slots ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static int parse_diff_color_slot(const char *var)
{
 if (!strcasecmp(var, "plain"))
  return DIFF_CONTEXT;
 return LOOKUP_CONFIG(color_diff_slots, var);
}
