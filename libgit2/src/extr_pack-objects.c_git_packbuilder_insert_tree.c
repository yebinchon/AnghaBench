
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tree_walk_context {int buf; int member_1; TYPE_1__* member_0; } ;
typedef int git_tree ;
struct TYPE_4__ {int repo; } ;
typedef TYPE_1__ git_packbuilder ;
typedef int git_oid ;


 int GIT_BUF_INIT ;
 int GIT_TREEWALK_PRE ;
 int cb_tree_walk ;
 int git_buf_dispose (int *) ;
 int git_packbuilder_insert (TYPE_1__*,int const*,int *) ;
 int git_tree_free (int *) ;
 int git_tree_lookup (int **,int ,int const*) ;
 int git_tree_walk (int *,int ,int ,struct tree_walk_context*) ;

int git_packbuilder_insert_tree(git_packbuilder *pb, const git_oid *oid)
{
 int error;
 git_tree *tree = ((void*)0);
 struct tree_walk_context context = { pb, GIT_BUF_INIT };

 if (!(error = git_tree_lookup(&tree, pb->repo, oid)) &&
     !(error = git_packbuilder_insert(pb, oid, ((void*)0))))
  error = git_tree_walk(tree, GIT_TREEWALK_PRE, cb_tree_walk, &context);

 git_tree_free(tree);
 git_buf_dispose(&context.buf);
 return error;
}
