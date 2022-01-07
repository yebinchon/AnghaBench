
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int simple_strtol (char*,char**,int) ;

__attribute__((used)) static void
deadline_var_store(int *var, const char *page)
{
 char *p = (char *) page;

 *var = simple_strtol(p, &p, 10);
}
