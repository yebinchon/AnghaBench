
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_CHUNK (char*,int,int,char*,int) ;
 int sprintf (char*,char*,int ) ;
 int uml_physmem ;

__attribute__((used)) static int mem_get_config(char *name, char *str, int size, char **error_out)
{
 char buf[sizeof("18446744073709551615")];
 int len = 0;

 sprintf(buf, "%ld", uml_physmem);
 CONFIG_CHUNK(str, size, len, buf, 1);

 return len;
}
