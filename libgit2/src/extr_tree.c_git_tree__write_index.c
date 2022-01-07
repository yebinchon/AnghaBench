
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
typedef int git_oid ;
struct TYPE_7__ {int tree_pool; TYPE_3__* tree; scalar_t__ ignore_case; } ;
typedef TYPE_1__ git_index ;
typedef int git_buf ;
struct TYPE_8__ {scalar_t__ entry_count; int oid; } ;


 int GIT_BUF_INIT ;
 int GIT_ERROR_INDEX ;
 int GIT_EUNMERGED ;
 int assert (int ) ;
 int git_buf_dispose (int *) ;
 int git_error_set (int ,char*) ;
 int git_index__set_ignore_case (TYPE_1__*,int) ;
 scalar_t__ git_index_has_conflicts (TYPE_1__*) ;
 int git_oid_cpy (int *,int *) ;
 int git_pool_clear (int *) ;
 int git_tree_cache_read_tree (TYPE_3__**,int *,int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int *,int *) ;
 int write_tree (int *,int *,TYPE_1__*,char*,int ,int *) ;

int git_tree__write_index(
 git_oid *oid, git_index *index, git_repository *repo)
{
 int ret;
 git_tree *tree;
 git_buf shared_buf = GIT_BUF_INIT;
 bool old_ignore_case = 0;

 assert(oid && index && repo);

 if (git_index_has_conflicts(index)) {
  git_error_set(GIT_ERROR_INDEX,
   "cannot create a tree from a not fully merged index.");
  return GIT_EUNMERGED;
 }

 if (index->tree != ((void*)0) && index->tree->entry_count >= 0) {
  git_oid_cpy(oid, &index->tree->oid);
  return 0;
 }






 if (index->ignore_case) {
  old_ignore_case = 1;
  git_index__set_ignore_case(index, 0);
 }

 ret = write_tree(oid, repo, index, "", 0, &shared_buf);
 git_buf_dispose(&shared_buf);

 if (old_ignore_case)
  git_index__set_ignore_case(index, 1);

 index->tree = ((void*)0);

 if (ret < 0)
  return ret;

 git_pool_clear(&index->tree_pool);

 if ((ret = git_tree_lookup(&tree, repo, oid)) < 0)
  return ret;


 ret = git_tree_cache_read_tree(&index->tree, tree, &index->tree_pool);
 git_tree_free(tree);

 return ret;
}
