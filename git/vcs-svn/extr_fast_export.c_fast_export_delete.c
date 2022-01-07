
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char) ;
 int quote_c_style (char const*,int *,int ,int ) ;
 int stdout ;

void fast_export_delete(const char *path)
{
 putchar('D');
 putchar(' ');
 quote_c_style(path, ((void*)0), stdout, 0);
 putchar('\n');
}
