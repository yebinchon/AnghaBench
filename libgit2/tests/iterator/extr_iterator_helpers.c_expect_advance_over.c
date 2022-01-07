
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_iterator_status_t ;
typedef int git_iterator ;
struct TYPE_4__ {int path; } ;
typedef TYPE_1__ git_index_entry ;


 int GIT_ITEROVER ;
 int cl_assert (int) ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_iterator_advance_over (TYPE_1__ const**,int *,int *) ;
 int git_iterator_current (TYPE_1__ const**,int *) ;

void expect_advance_over(
 git_iterator *i,
 const char *expected_path,
 git_iterator_status_t expected_status)
{
 const git_index_entry *entry;
 git_iterator_status_t status;
 int error;

 cl_git_pass(git_iterator_current(&entry, i));
 cl_assert_equal_s(expected_path, entry->path);

 error = git_iterator_advance_over(&entry, &status, i);
 cl_assert(!error || error == GIT_ITEROVER);
 cl_assert_equal_i(expected_status, status);
}
