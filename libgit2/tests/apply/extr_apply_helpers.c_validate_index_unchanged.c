
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tree ;
typedef int git_repository ;
typedef int git_iterator ;
typedef int git_index ;


 int cl_git_pass (int ) ;
 int git_index_free (int *) ;
 int git_iterator_for_index (int **,int *,int *,int *) ;
 int git_iterator_for_tree (int **,int *,int *) ;
 int git_iterator_free (int *) ;
 int git_iterator_walk (int **,int,int ,int *) ;
 int git_repository_head_tree (int **,int *) ;
 int git_repository_index (int **,int *) ;
 int git_tree_free (int *) ;
 int iterator_eq ;

void validate_index_unchanged(git_repository *repo)
{
 git_tree *head;
 git_index *index;
 git_iterator *head_iterator, *index_iterator, *iterators[2];

 cl_git_pass(git_repository_head_tree(&head, repo));
 cl_git_pass(git_repository_index(&index, repo));

 cl_git_pass(git_iterator_for_tree(&head_iterator, head, ((void*)0)));
 cl_git_pass(git_iterator_for_index(&index_iterator, repo, index, ((void*)0)));

 iterators[0] = head_iterator;
 iterators[1] = index_iterator;

 cl_git_pass(git_iterator_walk(iterators, 2, iterator_eq, ((void*)0)));

 git_iterator_free(head_iterator);
 git_iterator_free(index_iterator);

 git_tree_free(head);
 git_index_free(index);
}
