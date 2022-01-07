
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_tree ;
typedef int git_repository ;
struct TYPE_4__ {char const* start; char const* end; int flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;


 int GIT_ITERATOR_DONT_IGNORE_CASE ;
 int GIT_ITERATOR_IGNORE_CASE ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_iterator_advance (int *,int *) ;
 int git_iterator_for_tree (int **,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_repository_head_tree (int **,int *) ;
 int git_tree_free (int *) ;

__attribute__((used)) static void check_tree_range(
 git_repository *repo,
 const char *start,
 const char *end,
 bool ignore_case,
 int expected_count)
{
 git_tree *head;
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 int error, count;

 i_opts.flags = ignore_case ? GIT_ITERATOR_IGNORE_CASE : GIT_ITERATOR_DONT_IGNORE_CASE;
 i_opts.start = start;
 i_opts.end = end;

 cl_git_pass(git_repository_head_tree(&head, repo));

 cl_git_pass(git_iterator_for_tree(&i, head, &i_opts));

 for (count = 0; !(error = git_iterator_advance(((void*)0), i)); ++count)
                   ;

 cl_assert_equal_i(GIT_ITEROVER, error);
 cl_assert_equal_i(expected_count, count);

 git_iterator_free(i);
 git_tree_free(head);
}
