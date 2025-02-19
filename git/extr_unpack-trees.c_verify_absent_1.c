
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int update; scalar_t__ reset; scalar_t__ index_only; } ;
struct stat {int dummy; } ;
struct cache_entry {char* name; int oid; } ;
typedef enum unpack_trees_error_types { ____Placeholder_unpack_trees_error_types } unpack_trees_error_types ;


 int DT_UNKNOWN ;
 scalar_t__ ENOENT ;
 int ce_namelen (struct cache_entry const*) ;
 int ce_to_dtype (struct cache_entry const*) ;
 int check_leading_path (char*,int) ;
 int check_ok_to_remove (char*,int,int ,struct cache_entry const*,struct stat*,int,struct unpack_trees_options*) ;
 int check_submodule_move_head (struct cache_entry const*,int ,int *,struct unpack_trees_options*) ;
 scalar_t__ errno ;
 int error_errno (char*,char*) ;
 int free (char*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int oid_to_hex (int *) ;
 scalar_t__ submodule_from_ce (struct cache_entry const*) ;
 char* xmemdupz (char*,int) ;

__attribute__((used)) static int verify_absent_1(const struct cache_entry *ce,
      enum unpack_trees_error_types error_type,
      struct unpack_trees_options *o)
{
 int len;
 struct stat st;

 if (o->index_only || o->reset || !o->update)
  return 0;

 len = check_leading_path(ce->name, ce_namelen(ce));
 if (!len)
  return 0;
 else if (len > 0) {
  char *path;
  int ret;

  path = xmemdupz(ce->name, len);
  if (lstat(path, &st))
   ret = error_errno("cannot stat '%s'", path);
  else {
   if (submodule_from_ce(ce))
    ret = check_submodule_move_head(ce,
        oid_to_hex(&ce->oid),
        ((void*)0), o);
   else
    ret = check_ok_to_remove(path, len, DT_UNKNOWN, ((void*)0),
        &st, error_type, o);
  }
  free(path);
  return ret;
 } else if (lstat(ce->name, &st)) {
  if (errno != ENOENT)
   return error_errno("cannot stat '%s'", ce->name);
  return 0;
 } else {
  if (submodule_from_ce(ce))
   return check_submodule_move_head(ce, oid_to_hex(&ce->oid),
        ((void*)0), o);

  return check_ok_to_remove(ce->name, ce_namelen(ce),
       ce_to_dtype(ce), ce, &st,
       error_type, o);
 }
}
