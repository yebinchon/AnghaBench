
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int klass; } ;
typedef TYPE_1__ git_error ;
struct TYPE_6__ {scalar_t__ version; } ;


 int GIT_ERROR_INVALID ;
 int alien ;
 int cl_assert_equal_i (int ,int ) ;
 int cl_git_fail (int ) ;
 int d ;
 int diff_binary_cb ;
 int diff_file_cb ;
 int diff_hunk_cb ;
 int diff_line_cb ;
 int expected ;
 int git_diff_blobs (int ,int *,int ,int *,TYPE_2__*,int ,int ,int ,int ,int *) ;
 TYPE_1__* git_error_last () ;
 TYPE_2__ opts ;

void test_diff_blob__checks_options_version_too_low(void)
{
 const git_error *err;

 opts.version = 0;
 cl_git_fail(git_diff_blobs(
  d, ((void*)0), alien, ((void*)0), &opts,
  diff_file_cb, diff_binary_cb, diff_hunk_cb, diff_line_cb, &expected));
 err = git_error_last();
 cl_assert_equal_i(GIT_ERROR_INVALID, err->klass);
}
