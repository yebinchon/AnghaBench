
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_iterator ;
struct TYPE_5__ {int mode; int path; } ;
typedef TYPE_1__ git_index_entry ;


 int GIT_ITEROVER ;
 scalar_t__ S_ISDIR (int ) ;
 int cl_assert (int) ;
 int cl_assert_equal_s (char const*,int ) ;
 int cl_git_pass (int ) ;
 int git_iterator_advance (TYPE_1__ const**,int *) ;
 int git_iterator_advance_into (TYPE_1__ const**,int *) ;
 int git_iterator_current (TYPE_1__ const**,int *) ;

void expect_advance_into(
 git_iterator *i,
 const char *expected_path)
{
 const git_index_entry *entry;
 int error;

 cl_git_pass(git_iterator_current(&entry, i));
 cl_assert_equal_s(expected_path, entry->path);

 if (S_ISDIR(entry->mode))
  error = git_iterator_advance_into(&entry, i);
 else
  error = git_iterator_advance(&entry, i);

 cl_assert(!error || error == GIT_ITEROVER);
}
