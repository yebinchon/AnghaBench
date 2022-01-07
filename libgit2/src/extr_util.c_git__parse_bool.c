
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char*) ;

int git__parse_bool(int *out, const char *value)
{

 if (value == ((void*)0) ||
  !strcasecmp(value, "true") ||
  !strcasecmp(value, "yes") ||
  !strcasecmp(value, "on")) {
  *out = 1;
  return 0;
 }
 if (!strcasecmp(value, "false") ||
  !strcasecmp(value, "no") ||
  !strcasecmp(value, "off") ||
  value[0] == '\0') {
  *out = 0;
  return 0;
 }

 return -1;
}
