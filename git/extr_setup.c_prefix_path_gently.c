
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ abspath_part_inside_repo (char*) ;
 int free (char*) ;
 scalar_t__ is_absolute_path (char const*) ;
 scalar_t__ normalize_path_copy_len (char*,char const*,int*) ;
 int strlen (char const*) ;
 char* xmallocz (int ) ;
 char* xstrfmt (char*,int,char const*,char const*) ;

char *prefix_path_gently(const char *prefix, int len,
    int *remaining_prefix, const char *path)
{
 const char *orig = path;
 char *sanitized;
 if (is_absolute_path(orig)) {
  sanitized = xmallocz(strlen(path));
  if (remaining_prefix)
   *remaining_prefix = 0;
  if (normalize_path_copy_len(sanitized, path, remaining_prefix)) {
   free(sanitized);
   return ((void*)0);
  }
  if (abspath_part_inside_repo(sanitized)) {
   free(sanitized);
   return ((void*)0);
  }
 } else {
  sanitized = xstrfmt("%.*s%s", len, len ? prefix : "", path);
  if (remaining_prefix)
   *remaining_prefix = len;
  if (normalize_path_copy_len(sanitized, sanitized, remaining_prefix)) {
   free(sanitized);
   return ((void*)0);
  }
 }
 return sanitized;
}
