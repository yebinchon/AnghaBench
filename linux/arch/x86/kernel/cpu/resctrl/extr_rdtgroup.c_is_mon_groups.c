
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {char const* name; } ;


 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bool is_mon_groups(struct kernfs_node *kn, const char *name)
{
 return (!strcmp(kn->name, "mon_groups") &&
  strcmp(name, "mon_groups"));
}
