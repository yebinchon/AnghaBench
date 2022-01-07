
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct property* new_property (char*,int,unsigned char*,struct property*) ;
 struct device_node* of_find_node_by_path (char*) ;
 int of_node_put (struct device_node*) ;
 int pSeries_reconfig_add_node (char*,struct property*) ;
 char* parse_next_property (char*,char*,char**,int*,unsigned char**) ;
 int release_prop_list (struct property*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int do_add_node(char *buf, size_t bufsize)
{
 char *path, *end, *name;
 struct device_node *np;
 struct property *prop = ((void*)0);
 unsigned char* value;
 int length, rv = 0;

 end = buf + bufsize;
 path = buf;
 buf = strchr(buf, ' ');
 if (!buf)
  return -EINVAL;
 *buf = '\0';
 buf++;

 if ((np = of_find_node_by_path(path))) {
  of_node_put(np);
  return -EINVAL;
 }


 while (buf < end &&
        (buf = parse_next_property(buf, end, &name, &length, &value))) {
  struct property *last = prop;

  prop = new_property(name, length, value, last);
  if (!prop) {
   rv = -ENOMEM;
   prop = last;
   goto out;
  }
 }
 if (!buf) {
  rv = -EINVAL;
  goto out;
 }

 rv = pSeries_reconfig_add_node(path, prop);

out:
 if (rv)
  release_prop_list(prop);
 return rv;
}
