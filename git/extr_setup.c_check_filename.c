
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int _ (char*) ;
 int die_errno (int ,char const*) ;
 int errno ;
 int free (char*) ;
 scalar_t__ is_missing_file_error (int ) ;
 int lstat (char const*,struct stat*) ;
 char* prefix_filename (char const*,char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;

int check_filename(const char *prefix, const char *arg)
{
 char *to_free = ((void*)0);
 struct stat st;

 if (skip_prefix(arg, ":/", &arg)) {
  if (!*arg)
   return 1;
  prefix = ((void*)0);
 } else if (skip_prefix(arg, ":!", &arg) ||
     skip_prefix(arg, ":^", &arg)) {
  if (!*arg)
   return 1;
 }

 if (prefix)
  arg = to_free = prefix_filename(prefix, arg);

 if (!lstat(arg, &st)) {
  free(to_free);
  return 1;
 }
 if (is_missing_file_error(errno)) {
  free(to_free);
  return 0;
 }
 die_errno(_("failed to stat '%s'"), arg);
}
