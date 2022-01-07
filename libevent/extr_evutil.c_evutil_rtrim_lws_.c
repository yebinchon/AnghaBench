
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

void
evutil_rtrim_lws_(char *str)
{
 char *cp;

 if (str == ((void*)0))
  return;

 if ((cp = strchr(str, '\0')) == ((void*)0) || (cp == str))
  return;

 --cp;

 while (*cp == ' ' || *cp == '\t') {
  *cp = '\0';
  if (cp == str)
   break;
  --cp;
 }
}
