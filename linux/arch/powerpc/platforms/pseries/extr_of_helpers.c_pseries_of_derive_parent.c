
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct device_node* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 char* kbasename (char const*) ;
 int kfree (char*) ;
 char* kstrndup (char const*,int,int ) ;
 struct device_node* of_find_node_by_path (char*) ;
 scalar_t__ strcmp (char const*,char*) ;

struct device_node *pseries_of_derive_parent(const char *path)
{
 struct device_node *parent;
 char *parent_path = "/";
 const char *tail;


 tail = kbasename(path) - 1;


 if (!strcmp(path, "/"))
  return ERR_PTR(-EINVAL);

 if (tail > path) {
  parent_path = kstrndup(path, tail - path, GFP_KERNEL);
  if (!parent_path)
   return ERR_PTR(-ENOMEM);
 }
 parent = of_find_node_by_path(parent_path);
 if (strcmp(parent_path, "/"))
  kfree(parent_path);
 return parent ? parent : ERR_PTR(-EINVAL);
}
