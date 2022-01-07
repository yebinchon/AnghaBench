
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

int git__strcmp_cb(const void *a, const void *b)
{
 return strcmp((const char *)a, (const char *)b);
}
