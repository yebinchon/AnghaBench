
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

int
strcmp_asc (const void *a, const void *b)
{
  return strcmp (*((char **) a), *((char **) b));
}
