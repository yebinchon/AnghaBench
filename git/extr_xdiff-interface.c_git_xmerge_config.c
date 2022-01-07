
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ XDL_MERGE_DIFF3 ;
 int die (char*,char const*,...) ;
 int git_default_config (char const*,char const*,void*) ;
 scalar_t__ git_xmerge_style ;
 int strcmp (char const*,char*) ;

int git_xmerge_config(const char *var, const char *value, void *cb)
{
 if (!strcmp(var, "merge.conflictstyle")) {
  if (!value)
   die("'%s' is not a boolean", var);
  if (!strcmp(value, "diff3"))
   git_xmerge_style = XDL_MERGE_DIFF3;
  else if (!strcmp(value, "merge"))
   git_xmerge_style = 0;




  else
   die("unknown style '%s' given for '%s'",
       value, var);
  return 0;
 }
 return git_default_config(var, value, cb);
}
