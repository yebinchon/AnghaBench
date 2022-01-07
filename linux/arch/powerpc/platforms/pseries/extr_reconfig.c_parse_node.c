
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int phandle ;


 struct device_node* of_find_node_by_phandle (int ) ;
 int simple_strtoul (char*,int *,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *parse_node(char *buf, size_t bufsize, struct device_node **npp)
{
 char *handle_str;
 phandle handle;
 *npp = ((void*)0);

 handle_str = buf;

 buf = strchr(buf, ' ');
 if (!buf)
  return ((void*)0);
 *buf = '\0';
 buf++;

 handle = simple_strtoul(handle_str, ((void*)0), 0);

 *npp = of_find_node_by_phandle(handle);
 return buf;
}
