
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum protocol_allow_config { ____Placeholder_protocol_allow_config } protocol_allow_config ;


 int PROTOCOL_ALLOW_ALWAYS ;
 int PROTOCOL_ALLOW_NEVER ;
 int PROTOCOL_ALLOW_USER_ONLY ;
 int _ (char*) ;
 int die (int ,char const*,char const*) ;
 int strcasecmp (char const*,char*) ;

__attribute__((used)) static enum protocol_allow_config parse_protocol_config(const char *key,
       const char *value)
{
 if (!strcasecmp(value, "always"))
  return PROTOCOL_ALLOW_ALWAYS;
 else if (!strcasecmp(value, "never"))
  return PROTOCOL_ALLOW_NEVER;
 else if (!strcasecmp(value, "user"))
  return PROTOCOL_ALLOW_USER_ONLY;

 die(_("unknown value for config '%s': %s"), key, value);
}
