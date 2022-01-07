
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error_putstr (char*) ;

void warn(char *m)
{
 error_putstr("\n\n");
 error_putstr(m);
 error_putstr("\n\n");
}
