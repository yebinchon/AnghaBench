
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct git_commit {int dummy; } ;
struct TYPE_6__ {int raw_message; } ;
typedef TYPE_1__ git_commit ;


 int cl_assert (TYPE_1__*) ;
 int cl_assert_equal_s (char const*,int ) ;
 TYPE_1__* git__calloc (int,int) ;
 int git__strdup (char const*) ;
 int git_commit__free (TYPE_1__*) ;
 int git_commit_body (TYPE_1__*) ;

void assert_commit_body(const char *expected, const char *given)
{
 git_commit *dummy;

 cl_assert(dummy = git__calloc(1, sizeof(struct git_commit)));

 dummy->raw_message = git__strdup(given);
 cl_assert_equal_s(expected, git_commit_body(dummy));

 git_commit__free(dummy);
}
