
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_ITERATOR_INCLUDE_HASH ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_iterator_for_tree (int **,int *,int *) ;
 int git_iterator_for_workdir (int **,int *,int *,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_iterator_walk (int **,int,int ,int *) ;
 int git_repository_head_tree (int **,int *) ;
 int git_repository_index (int **,int *) ;
 int git_tree_free (int *) ;
 int iterator_eq ;

void validate_workdir_unchanged(git_repository *repo)
{
 git_tree *head;
 git_index *index;
 git_iterator *head_iterator, *workdir_iterator, *iterators[2];
 git_iterator_options workdir_opts = GIT_ITERATOR_OPTIONS_INIT;

 cl_git_pass(git_repository_head_tree(&head, repo));
 cl_git_pass(git_repository_index(&index, repo));

 workdir_opts.flags |= GIT_ITERATOR_INCLUDE_HASH;

 cl_git_pass(git_iterator_for_tree(&head_iterator, head, ((void*)0)));
 cl_git_pass(git_iterator_for_workdir(&workdir_iterator, repo, index, ((void*)0), &workdir_opts));

 iterators[0] = head_iterator;
 iterators[1] = workdir_iterator;

 cl_git_pass(git_iterator_walk(iterators, 2, iterator_eq, ((void*)0)));

 git_iterator_free(head_iterator);
 git_iterator_free(workdir_iterator);

 git_tree_free(head);
 git_index_free(index);
}
