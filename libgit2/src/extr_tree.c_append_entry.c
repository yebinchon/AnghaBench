
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_8__ {int map; int repo; } ;
typedef TYPE_1__ git_treebuilder ;
struct TYPE_9__ {int filename; scalar_t__ attr; } ;
typedef TYPE_2__ git_tree_entry ;
typedef int git_oid ;
typedef scalar_t__ git_filemode_t ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_2__*) ;
 int GIT_ERROR_TREE ;
 TYPE_2__* alloc_entry (char const*,int ,int const*) ;
 int check_entry (int ,char const*,int const*,scalar_t__) ;
 int git_error_set (int ,char*,char const*) ;
 int git_strmap_set (int ,int ,TYPE_2__*) ;
 int git_tree_entry_free (TYPE_2__*) ;
 int strlen (char const*) ;

__attribute__((used)) static int append_entry(
 git_treebuilder *bld,
 const char *filename,
 const git_oid *id,
 git_filemode_t filemode,
 bool validate)
{
 git_tree_entry *entry;
 int error = 0;

 if (validate && ((error = check_entry(bld->repo, filename, id, filemode)) < 0))
  return error;

 entry = alloc_entry(filename, strlen(filename), id);
 GIT_ERROR_CHECK_ALLOC(entry);

 entry->attr = (uint16_t)filemode;

 if ((error = git_strmap_set(bld->map, entry->filename, entry)) < 0) {
  git_tree_entry_free(entry);
  git_error_set(GIT_ERROR_TREE, "failed to append entry %s to the tree builder", filename);
  return -1;
 }

 return 0;
}
