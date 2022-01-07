
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ of_call_prom (char*,int,int,char const*) ;

void *of_finddevice(const char *name)
{
 return (void *) (unsigned long) of_call_prom("finddevice", 1, 1, name);
}
