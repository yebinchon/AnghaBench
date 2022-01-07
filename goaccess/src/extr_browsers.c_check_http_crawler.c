
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strstr (char const*,char*) ;

__attribute__((used)) static char *
check_http_crawler (const char *str)
{
  char *match = ((void*)0);


  if ((match = strstr (str, "; +http")))
    return match;

  if ((match = strstr (str, "; http")))
    return match;

  if ((match = strstr (str, " (+http")))
    return match;

  if ((match = strstr (str, " (http")))
    return match;

  if ((match = strstr (str, ";++http")))
    return match;
  return ((void*)0);
}
