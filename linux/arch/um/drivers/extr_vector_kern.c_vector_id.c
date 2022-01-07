
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int simple_strtoul (char*,char**,int ) ;

__attribute__((used)) static int vector_id(char **str, int *start_out, int *end_out)
{
 char *end;
 int n;

 n = simple_strtoul(*str, &end, 0);
 if ((*end != '\0') || (end == *str))
  return -1;

 *start_out = n;
 *end_out = n;
 *str = end;
 return n;
}
