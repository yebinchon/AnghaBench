
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** member_0; int member_1; } ;
typedef TYPE_1__ git_strarray ;
typedef int git_pathspec ;


 int ARRAY_SIZE (char**) ;
 int GIT_PATHSPEC_IGNORE_CASE ;
 int GIT_PATHSPEC_NO_GLOB ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_pathspec_free (int *) ;
 int git_pathspec_matches_path (int *,int ,char*) ;
 int git_pathspec_new (int **,TYPE_1__*) ;

void test_repo_pathspec__in_memory(void)
{
 static char *strings[] = { "one", "two*", "!three*", "*four" };
 git_strarray s = { strings, ARRAY_SIZE(strings) };
 git_pathspec *ps;

 cl_git_pass(git_pathspec_new(&ps, &s));

 cl_assert(git_pathspec_matches_path(ps, 0, "one"));
 cl_assert(!git_pathspec_matches_path(ps, 0, "ONE"));
 cl_assert(git_pathspec_matches_path(ps, GIT_PATHSPEC_IGNORE_CASE, "ONE"));
 cl_assert(git_pathspec_matches_path(ps, 0, "two"));
 cl_assert(git_pathspec_matches_path(ps, 0, "two.txt"));
 cl_assert(!git_pathspec_matches_path(ps, 0, "three.txt"));
 cl_assert(git_pathspec_matches_path(ps, 0, "anything.four"));
 cl_assert(!git_pathspec_matches_path(ps, 0, "three.four"));
 cl_assert(!git_pathspec_matches_path(ps, 0, "nomatch"));
 cl_assert(!git_pathspec_matches_path(ps, GIT_PATHSPEC_NO_GLOB, "two"));
 cl_assert(git_pathspec_matches_path(ps, GIT_PATHSPEC_NO_GLOB, "two*"));
 cl_assert(!git_pathspec_matches_path(ps, GIT_PATHSPEC_NO_GLOB, "anyfour"));
 cl_assert(git_pathspec_matches_path(ps, GIT_PATHSPEC_NO_GLOB, "*four"));

 git_pathspec_free(ps);
}
