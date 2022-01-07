
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_bool ;


 int FALSE ;
 int TRUE ;
 char* strchr (char const*,char) ;
 int strcmp (char const*,char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static mrb_bool
check_cmd_pattern(const char *pattern, const char *cmd)
{
  const char *lbracket, *rbracket, *p, *q;

  if (pattern == ((void*)0) && cmd == ((void*)0)) {
    return TRUE;
  }
  if (pattern == ((void*)0) || cmd == ((void*)0)) {
    return FALSE;
  }
  if ((lbracket = strchr(pattern, '[')) == ((void*)0)) {
    return !strcmp(pattern, cmd);
  }
  if ((rbracket = strchr(pattern, ']')) == ((void*)0)) {
    return FALSE;
  }
  if (strncmp(pattern, cmd, lbracket - pattern)) {
    return FALSE;
  }

  p = lbracket + 1;
  q = (char *)cmd + (lbracket - pattern);

  for ( ; p < rbracket && *q != '\0'; p++, q++) {
    if (*p != *q) {
      break;
    }
  }
  return *q == '\0';
}
