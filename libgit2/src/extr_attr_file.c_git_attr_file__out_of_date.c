
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
struct TYPE_9__ {scalar_t__ key; } ;
typedef TYPE_3__ git_attr_session ;
struct TYPE_8__ {int oid; int stamp; } ;
struct TYPE_10__ {scalar_t__ session_key; int source; TYPE_2__ cache_data; TYPE_1__* entry; scalar_t__ nonexistent; } ;
typedef TYPE_4__ git_attr_file ;
struct TYPE_7__ {int path; int fullpath; } ;






 int GIT_ERROR_INVALID ;
 int attr_file_oid_from_index (int *,int *,int ) ;
 int git_error_set (int ,char*,int) ;
 int git_futils_filestamp_check (int *,int ) ;
 int git_oid__cmp (int *,int *) ;
 int git_repository_head_tree (int **,int *) ;
 int git_tree_free (int *) ;
 int * git_tree_id (int *) ;

int git_attr_file__out_of_date(
 git_repository *repo,
 git_attr_session *attr_session,
 git_attr_file *file)
{
 if (!file)
  return 1;




 if (attr_session && attr_session->key == file->session_key)
  return 0;
 else if (file->nonexistent)
  return 1;

 switch (file->source) {
 case 128:
  return 0;

 case 131:
  return git_futils_filestamp_check(
   &file->cache_data.stamp, file->entry->fullpath);

 case 129: {
  int error;
  git_oid id;

  if ((error = attr_file_oid_from_index(
    &id, repo, file->entry->path)) < 0)
   return error;

  return (git_oid__cmp(&file->cache_data.oid, &id) != 0);
 }

 case 130: {
  git_tree *tree;
  int error;

  if ((error = git_repository_head_tree(&tree, repo)) < 0)
   return error;

  error = git_oid__cmp(&file->cache_data.oid, git_tree_id(tree));

  git_tree_free(tree);
  return error;
 }

 default:
  git_error_set(GIT_ERROR_INVALID, "invalid file type %d", file->source);
  return -1;
 }
}
