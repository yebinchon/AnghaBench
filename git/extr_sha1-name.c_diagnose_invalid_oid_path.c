
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int die (char*,char const*,...) ;
 int errno ;
 scalar_t__ file_exists (char const*) ;
 int get_tree_entry (struct repository*,struct object_id const*,char*,struct object_id*,unsigned short*) ;
 scalar_t__ is_missing_file_error (int ) ;
 char* xstrfmt (char*,char const*,char const*) ;

__attribute__((used)) static void diagnose_invalid_oid_path(struct repository *r,
          const char *prefix,
          const char *filename,
          const struct object_id *tree_oid,
          const char *object_name,
          int object_name_len)
{
 struct object_id oid;
 unsigned short mode;

 if (!prefix)
  prefix = "";

 if (file_exists(filename))
  die("Path '%s' exists on disk, but not in '%.*s'.",
      filename, object_name_len, object_name);
 if (is_missing_file_error(errno)) {
  char *fullname = xstrfmt("%s%s", prefix, filename);

  if (!get_tree_entry(r, tree_oid, fullname, &oid, &mode)) {
   die("Path '%s' exists, but not '%s'.\n"
       "Did you mean '%.*s:%s' aka '%.*s:./%s'?",
       fullname,
       filename,
       object_name_len, object_name,
       fullname,
       object_name_len, object_name,
       filename);
  }
  die("Path '%s' does not exist in '%.*s'",
      filename, object_name_len, object_name);
 }
}
