
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct object_id {int dummy; } ;
struct cache_entry {int name; int ce_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int S_ISGITLINK (int ) ;
 int ce_namelen (struct cache_entry const*) ;
 int errno ;
 scalar_t__ has_symlink_leading_path (int ,int ) ;
 int is_missing_file_error (int ) ;
 scalar_t__ lstat (int ,struct stat*) ;
 scalar_t__ resolve_gitlink_ref (int ,char*,struct object_id*) ;

__attribute__((used)) static int check_removed(const struct cache_entry *ce, struct stat *st)
{
 if (lstat(ce->name, st) < 0) {
  if (!is_missing_file_error(errno))
   return -1;
  return 1;
 }
 if (has_symlink_leading_path(ce->name, ce_namelen(ce)))
  return 1;
 if (S_ISDIR(st->st_mode)) {
  struct object_id sub;
  if (!S_ISGITLINK(ce->ce_mode) &&
      resolve_gitlink_ref(ce->name, "HEAD", &sub))
   return 1;
 }
 return 0;
}
