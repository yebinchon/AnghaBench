
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;

const char *prettify_refname(const char *name)
{
 if (skip_prefix(name, "refs/heads/", &name) ||
     skip_prefix(name, "refs/tags/", &name) ||
     skip_prefix(name, "refs/remotes/", &name))
  ;
 return name;
}
