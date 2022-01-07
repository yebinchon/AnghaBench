
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int map; int repo; } ;
typedef TYPE_1__ git_treebuilder ;
struct TYPE_11__ {int attr; int filename; scalar_t__ oid; } ;
typedef TYPE_2__ git_tree_entry ;
typedef int git_oid ;
typedef int git_filemode_t ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ERROR_TREE ;
 TYPE_2__* alloc_entry (char const*,int ,int const*) ;
 int assert (int ) ;
 int check_entry (int ,char const*,int const*,int ) ;
 int git_error_set (int ,char*,char const*) ;
 int git_oid_cpy (int *,int const*) ;
 TYPE_2__* git_strmap_get (int ,char const*) ;
 int git_strmap_set (int ,int ,TYPE_2__*) ;
 int git_tree_entry_free (TYPE_2__*) ;
 int strlen (char const*) ;

int git_treebuilder_insert(
 const git_tree_entry **entry_out,
 git_treebuilder *bld,
 const char *filename,
 const git_oid *id,
 git_filemode_t filemode)
{
 git_tree_entry *entry;
 int error;

 assert(bld && id && filename);

 if ((error = check_entry(bld->repo, filename, id, filemode)) < 0)
  return error;

 if ((entry = git_strmap_get(bld->map, filename)) != ((void*)0)) {
  git_oid_cpy((git_oid *) entry->oid, id);
 } else {
  entry = alloc_entry(filename, strlen(filename), id);
  GIT_ERROR_CHECK_ALLOC(entry);

  if ((error = git_strmap_set(bld->map, entry->filename, entry)) < 0) {
   git_tree_entry_free(entry);
   git_error_set(GIT_ERROR_TREE, "failed to insert %s", filename);
   return -1;
  }
 }

 entry->attr = filemode;

 if (entry_out)
  *entry_out = entry;

 return 0;
}
