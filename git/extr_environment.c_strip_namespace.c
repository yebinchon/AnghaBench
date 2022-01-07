
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_git_namespace () ;
 scalar_t__ skip_prefix (char const*,int ,char const**) ;

const char *strip_namespace(const char *namespaced_ref)
{
 const char *out;
 if (skip_prefix(namespaced_ref, get_git_namespace(), &out))
  return out;
 return ((void*)0);
}
