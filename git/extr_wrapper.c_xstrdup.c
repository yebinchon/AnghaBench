
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*) ;
 char* strdup (char const*) ;

char *xstrdup(const char *str)
{
 char *ret = strdup(str);
 if (!ret)
  die("Out of memory, strdup failed");
 return ret;
}
