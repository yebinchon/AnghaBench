
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_stash_apply_progress_t ;


 int cl_assert_equal_i (scalar_t__,scalar_t__) ;

int progress_cb(
 git_stash_apply_progress_t progress,
 void *payload)
{
 git_stash_apply_progress_t *p = (git_stash_apply_progress_t *)payload;

 cl_assert_equal_i((*p)+1, progress);

 *p = progress;

 return 0;
}
