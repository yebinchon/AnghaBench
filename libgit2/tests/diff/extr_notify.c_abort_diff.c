
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_diff_delta ;
typedef void git_diff ;


 int GIT_UNUSED (void*) ;

__attribute__((used)) static int abort_diff(
 const git_diff *diff_so_far,
 const git_diff_delta *delta_to_add,
 const char *matched_pathspec,
 void *payload)
{
 GIT_UNUSED(diff_so_far);
 GIT_UNUSED(delta_to_add);
 GIT_UNUSED(matched_pathspec);
 GIT_UNUSED(payload);

 return -42;
}
