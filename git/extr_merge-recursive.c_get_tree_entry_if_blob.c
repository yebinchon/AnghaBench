
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct diff_filespec {scalar_t__ mode; int oid; } ;


 scalar_t__ S_ISDIR (scalar_t__) ;
 int get_tree_entry (struct repository*,struct object_id const*,char const*,int *,scalar_t__*) ;
 int null_oid ;
 int oidcpy (int *,int *) ;

__attribute__((used)) static int get_tree_entry_if_blob(struct repository *r,
      const struct object_id *tree,
      const char *path,
      struct diff_filespec *dfs)
{
 int ret;

 ret = get_tree_entry(r, tree, path, &dfs->oid, &dfs->mode);
 if (S_ISDIR(dfs->mode)) {
  oidcpy(&dfs->oid, &null_oid);
  dfs->mode = 0;
 }
 return ret;
}
