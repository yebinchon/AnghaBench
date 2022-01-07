
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
struct TYPE_9__ {scalar_t__ type; int tree; int commit; int index; } ;
typedef TYPE_2__ git_annotated_commit ;


 scalar_t__ GIT_ANNOTATED_COMMIT_VIRTUAL ;
 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int git_commit_tree (int *,int ) ;
 int git_index_owner (int ) ;
 int git_iterator_for_index (int **,int ,int ,TYPE_1__*) ;
 int git_iterator_for_nothing (int **,TYPE_1__*) ;
 int git_iterator_for_tree (int **,int ,TYPE_1__*) ;

__attribute__((used)) static int iterator_for_annotated_commit(
 git_iterator **out,
 git_annotated_commit *commit)
{
 git_iterator_options opts = GIT_ITERATOR_OPTIONS_INIT;
 int error;

 opts.flags = GIT_ITERATOR_DONT_IGNORE_CASE;

 if (commit == ((void*)0)) {
  error = git_iterator_for_nothing(out, &opts);
 } else if (commit->type == GIT_ANNOTATED_COMMIT_VIRTUAL) {
  error = git_iterator_for_index(out, git_index_owner(commit->index), commit->index, &opts);
 } else {
  if (!commit->tree &&
   (error = git_commit_tree(&commit->tree, commit->commit)) < 0)
   goto done;

  error = git_iterator_for_tree(out, commit->tree, &opts);
 }

done:
 return error;
}
