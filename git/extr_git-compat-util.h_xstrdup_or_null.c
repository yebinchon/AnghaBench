
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* xstrdup (char const*) ;

__attribute__((used)) static inline char *xstrdup_or_null(const char *str)
{
 return str ? xstrdup(str) : ((void*)0);
}
