
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_all_ref_updates ;
 int starts_with (char const*,char*) ;
 int strcmp (char const*,char*) ;

int should_autocreate_reflog(const char *refname)
{
 switch (log_all_ref_updates) {
 case 129:
  return 1;
 case 128:
  return starts_with(refname, "refs/heads/") ||
   starts_with(refname, "refs/remotes/") ||
   starts_with(refname, "refs/notes/") ||
   !strcmp(refname, "HEAD");
 default:
  return 0;
 }
}
