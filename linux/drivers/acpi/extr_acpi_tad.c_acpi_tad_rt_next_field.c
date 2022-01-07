
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kstrtoint (char*,int,int*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *acpi_tad_rt_next_field(char *s, int *val)
{
 char *p;

 p = strchr(s, ':');
 if (!p)
  return ((void*)0);

 *p = '\0';
 if (kstrtoint(s, 10, val))
  return ((void*)0);

 return p + 1;
}
