
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_repository ;
struct TYPE_4__ {char const* start; char const* end; scalar_t__ flags; } ;
typedef TYPE_1__ git_iterator_options ;
typedef int git_iterator ;
typedef int git_index ;


 int GIT_INDEX_CAPABILITY_IGNORE_CASE ;
 TYPE_1__ GIT_ITERATOR_OPTIONS_INIT ;
 int GIT_ITEROVER ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int,int) ;
 int cl_git_pass (int ) ;
 int git_index_caps (int *) ;
 int git_index_free (int *) ;
 int git_index_set_caps (int *,int) ;
 int git_iterator_advance (int *,int *) ;
 int git_iterator_for_index (int **,int *,int *,TYPE_1__*) ;
 int git_iterator_free (int *) ;
 int git_iterator_ignore_case (int *) ;
 int git_repository_index (int **,int *) ;

__attribute__((used)) static void check_index_range(
 git_repository *repo,
 const char *start,
 const char *end,
 bool ignore_case,
 int expected_count)
{
 git_index *index;
 git_iterator *i;
 git_iterator_options i_opts = GIT_ITERATOR_OPTIONS_INIT;
 int error, count, caps;
 bool is_ignoring_case;

 cl_git_pass(git_repository_index(&index, repo));

 caps = git_index_caps(index);
 is_ignoring_case = ((caps & GIT_INDEX_CAPABILITY_IGNORE_CASE) != 0);

 if (ignore_case != is_ignoring_case)
  cl_git_pass(git_index_set_caps(index, caps ^ GIT_INDEX_CAPABILITY_IGNORE_CASE));

 i_opts.flags = 0;
 i_opts.start = start;
 i_opts.end = end;

 cl_git_pass(git_iterator_for_index(&i, repo, index, &i_opts));

 cl_assert(git_iterator_ignore_case(i) == ignore_case);

 for (count = 0; !(error = git_iterator_advance(((void*)0), i)); ++count)
                   ;

 cl_assert_equal_i(GIT_ITEROVER, error);
 cl_assert_equal_i(expected_count, count);

 git_iterator_free(i);
 git_index_free(index);
}
