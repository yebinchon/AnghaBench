
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* g_strdup (char const*) ;

void *uiTableModelStrdup(const char *str)
{
 return g_strdup(str);
}
