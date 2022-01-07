
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_diff_file ;
typedef void* git_checkout_notify_t ;


 int GIT_UNUSED (void*) ;
 int cl_assert (int) ;

__attribute__((used)) static int dont_notify_cb(
 git_checkout_notify_t why,
 const char *path,
 const git_diff_file *baseline,
 const git_diff_file *target,
 const git_diff_file *workdir,
 void *payload)
{
 GIT_UNUSED(why);
 GIT_UNUSED(path);
 GIT_UNUSED(baseline);
 GIT_UNUSED(target);
 GIT_UNUSED(workdir);
 GIT_UNUSED(payload);

 cl_assert(0);

 return 0;
}
