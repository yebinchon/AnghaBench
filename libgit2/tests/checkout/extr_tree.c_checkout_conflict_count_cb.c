
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char git_diff_file ;
typedef char const* git_checkout_notify_t ;


 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int checkout_conflict_count_cb(
 git_checkout_notify_t why,
 const char *path,
 const git_diff_file *b,
 const git_diff_file *t,
 const git_diff_file *w,
 void *payload)
{
 size_t *n = payload;

 GIT_UNUSED(why);
 GIT_UNUSED(path);
 GIT_UNUSED(b);
 GIT_UNUSED(t);
 GIT_UNUSED(w);

 (*n)++;

 return 0;
}
