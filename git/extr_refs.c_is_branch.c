
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;

int is_branch(const char *refname)
{
 return !strcmp(refname, "HEAD") || starts_with(refname, "refs/heads/");
}
