
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 scalar_t__ color_parse (char*,int ) ;
 int config_error_nonbool (char const*) ;
 int git_config_colorbool (char const*,char*) ;
 int git_config_get_string (char const*,char**) ;
 int * transport_colors ;
 int transport_use_color ;
 int want_color_stderr (int ) ;

__attribute__((used)) static int transport_color_config(void)
{
 const char *keys[] = {
  "color.transport.reset",
  "color.transport.rejected"
 }, *key = "color.transport";
 char *value;
 int i;
 static int initialized;

 if (initialized)
  return 0;
 initialized = 1;

 if (!git_config_get_string(key, &value))
  transport_use_color = git_config_colorbool(key, value);

 if (!want_color_stderr(transport_use_color))
  return 0;

 for (i = 0; i < ARRAY_SIZE(keys); i++)
  if (!git_config_get_string(keys[i], &value)) {
   if (!value)
    return config_error_nonbool(keys[i]);
   if (color_parse(value, transport_colors[i]) < 0)
    return -1;
  }

 return 0;
}
