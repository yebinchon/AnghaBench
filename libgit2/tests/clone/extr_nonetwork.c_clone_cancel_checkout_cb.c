
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_diff_file ;
typedef int const* git_checkout_notify_t ;


 int GIT_UNUSED (int const*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int clone_cancel_checkout_cb(
 git_checkout_notify_t why,
 const char *path,
 const git_diff_file *b,
 const git_diff_file *t,
 const git_diff_file *w,
 void *payload)
{
 const char *at_file = payload;
 GIT_UNUSED(why); GIT_UNUSED(b); GIT_UNUSED(t); GIT_UNUSED(w);
 if (!strcmp(path, at_file))
  return -12345;
 return 0;
}
