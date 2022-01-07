
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_config_parser ;


 scalar_t__ git__isspace (char const) ;
 char* git__strndup (char const*,int) ;
 scalar_t__ is_namechar (char const) ;
 int set_parse_error (int *,int ,char*) ;

__attribute__((used)) static int parse_name(
 char **name, const char **value, git_config_parser *reader, const char *line)
{
 const char *name_end = line, *value_start;

 *name = ((void*)0);
 *value = ((void*)0);

 while (*name_end && is_namechar(*name_end))
  name_end++;

 if (line == name_end) {
  set_parse_error(reader, 0, "invalid configuration key");
  return -1;
 }

 value_start = name_end;

 while (*value_start && git__isspace(*value_start))
  value_start++;

 if (*value_start == '=') {
  *value = value_start + 1;
 } else if (*value_start) {
  set_parse_error(reader, 0, "invalid configuration key");
  return -1;
 }

 if ((*name = git__strndup(line, name_end - line)) == ((void*)0))
  return -1;

 return 0;
}
