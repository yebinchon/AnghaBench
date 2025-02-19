
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct update_submodule_cb_payload {int checkout_notify_called; } ;
typedef char git_diff_file ;
typedef char const* git_checkout_notify_t ;


 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int checkout_notify_cb(
 git_checkout_notify_t why,
 const char *path,
 const git_diff_file *baseline,
 const git_diff_file *target,
 const git_diff_file *workdir,
 void *payload)
{
 struct update_submodule_cb_payload *update_payload = payload;

 GIT_UNUSED(why);
 GIT_UNUSED(path);
 GIT_UNUSED(baseline);
 GIT_UNUSED(target);
 GIT_UNUSED(workdir);

 update_payload->checkout_notify_called = 1;

 return 0;
}
