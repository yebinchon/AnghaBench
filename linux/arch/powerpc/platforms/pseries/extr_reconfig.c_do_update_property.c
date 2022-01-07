
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 struct property* new_property (char*,int,unsigned char*,int *) ;
 int of_update_property (struct device_node*,struct property*) ;
 char* parse_next_property (char*,char*,char**,int*,unsigned char**) ;
 char* parse_node (char*,size_t,struct device_node**) ;
 int slb_set_size (int) ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int do_update_property(char *buf, size_t bufsize)
{
 struct device_node *np;
 unsigned char *value;
 char *name, *end, *next_prop;
 int length;
 struct property *newprop;
 buf = parse_node(buf, bufsize, &np);
 end = buf + bufsize;

 if (!np)
  return -ENODEV;

 next_prop = parse_next_property(buf, end, &name, &length, &value);
 if (!next_prop)
  return -EINVAL;

 if (!strlen(name))
  return -ENODEV;

 newprop = new_property(name, length, value, ((void*)0));
 if (!newprop)
  return -ENOMEM;

 if (!strcmp(name, "slb-size") || !strcmp(name, "ibm,slb-size"))
  slb_set_size(*(int *)value);

 return of_update_property(np, newprop);
}
