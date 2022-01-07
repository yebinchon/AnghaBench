
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int of_find_property (struct device_node*,char*,int *) ;
 int of_remove_property (struct device_node*,int ) ;
 char* parse_node (char*,size_t,struct device_node**) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int do_remove_property(char *buf, size_t bufsize)
{
 struct device_node *np;
 char *tmp;
 buf = parse_node(buf, bufsize, &np);

 if (!np)
  return -ENODEV;

 tmp = strchr(buf,' ');
 if (tmp)
  *tmp = '\0';

 if (strlen(buf) == 0)
  return -EINVAL;

 return of_remove_property(np, of_find_property(np, buf, ((void*)0)));
}
