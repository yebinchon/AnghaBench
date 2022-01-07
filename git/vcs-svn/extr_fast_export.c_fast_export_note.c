
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,char const*) ;

void fast_export_note(const char *committish, const char *dataref)
{
 printf("N %s %s\n", dataref, committish);
}
