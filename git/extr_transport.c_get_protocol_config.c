
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum protocol_allow_config { ____Placeholder_protocol_allow_config } protocol_allow_config ;


 int PROTOCOL_ALLOW_ALWAYS ;
 int PROTOCOL_ALLOW_NEVER ;
 int PROTOCOL_ALLOW_USER_ONLY ;
 int free (char*) ;
 int git_config_get_string (char*,char**) ;
 int parse_protocol_config (char*,char*) ;
 int strcmp (char const*,char*) ;
 char* xstrfmt (char*,char const*) ;

__attribute__((used)) static enum protocol_allow_config get_protocol_config(const char *type)
{
 char *key = xstrfmt("protocol.%s.allow", type);
 char *value;


 if (!git_config_get_string(key, &value)) {
  enum protocol_allow_config ret =
   parse_protocol_config(key, value);
  free(key);
  free(value);
  return ret;
 }
 free(key);


 if (!git_config_get_string("protocol.allow", &value)) {
  enum protocol_allow_config ret =
   parse_protocol_config("protocol.allow", value);
  free(value);
  return ret;
 }



 if (!strcmp(type, "http") ||
     !strcmp(type, "https") ||
     !strcmp(type, "git") ||
     !strcmp(type, "ssh") ||
     !strcmp(type, "file"))
  return PROTOCOL_ALLOW_ALWAYS;


 if (!strcmp(type, "ext"))
  return PROTOCOL_ALLOW_NEVER;


 return PROTOCOL_ALLOW_USER_ONLY;
}
