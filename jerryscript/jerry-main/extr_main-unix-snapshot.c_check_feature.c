
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jerry_feature_t ;


 int JERRY_LOG_LEVEL_WARNING ;
 int jerry_is_feature_enabled (int ) ;
 int jerry_port_default_set_log_level (int ) ;
 int jerry_port_log (int ,char*,char const*) ;

__attribute__((used)) static bool
check_feature (jerry_feature_t feature,
               const char *option)
{
  if (!jerry_is_feature_enabled (feature))
  {
    jerry_port_default_set_log_level (JERRY_LOG_LEVEL_WARNING);
    jerry_port_log (JERRY_LOG_LEVEL_WARNING, "Ignoring '%s' option because this feature is disabled!\n", option);
    return 0;
  }
  return 1;
}
