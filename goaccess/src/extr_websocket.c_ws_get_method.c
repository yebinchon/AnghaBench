
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char*,int) ;

__attribute__((used)) static const char *
ws_get_method (const char *token)
{
  const char *lookfor = ((void*)0);

  if ((lookfor = "GET", !memcmp (token, "GET ", 4)) ||
      (lookfor = "get", !memcmp (token, "get ", 4)))
    return lookfor;
  return ((void*)0);
}
