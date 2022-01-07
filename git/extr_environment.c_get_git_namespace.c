
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG (char*) ;
 char const* git_namespace ;

const char *get_git_namespace(void)
{
 if (!git_namespace)
  BUG("git environment hasn't been setup");
 return git_namespace;
}
