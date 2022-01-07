
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int result; int src_index; scalar_t__ dir; } ;
struct stat {int st_mode; } ;
struct cache_entry {int ce_flags; } ;
typedef enum unpack_trees_error_types { ____Placeholder_unpack_trees_error_types } unpack_trees_error_types ;


 int CE_REMOVE ;
 scalar_t__ S_ISDIR (int ) ;
 int add_rejected_path (struct unpack_trees_options*,int,char const*) ;
 scalar_t__ icase_exists (struct unpack_trees_options*,char const*,int,struct stat*) ;
 scalar_t__ ignore_case ;
 struct cache_entry* index_file_exists (int *,char const*,int,int ) ;
 scalar_t__ is_excluded (scalar_t__,int ,char const*,int*) ;
 scalar_t__ verify_clean_subdirectory (struct cache_entry const*,struct unpack_trees_options*) ;

__attribute__((used)) static int check_ok_to_remove(const char *name, int len, int dtype,
         const struct cache_entry *ce, struct stat *st,
         enum unpack_trees_error_types error_type,
         struct unpack_trees_options *o)
{
 const struct cache_entry *result;
 if (ignore_case && icase_exists(o, name, len, st))
  return 0;

 if (o->dir &&
     is_excluded(o->dir, o->src_index, name, &dtype))




  return 0;
 if (S_ISDIR(st->st_mode)) {







  if (verify_clean_subdirectory(ce, o) < 0)
   return -1;
  return 0;
 }






 result = index_file_exists(&o->result, name, len, 0);
 if (result) {
  if (result->ce_flags & CE_REMOVE)
   return 0;
 }

 return add_rejected_path(o, error_type, name);
}
