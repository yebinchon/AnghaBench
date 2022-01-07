
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int qsort_strcmp(const void *va, const void *vb)
{
 const char *a = *(const char **)va;
 const char *b = *(const char **)vb;

 return strcmp(a, b);
}
