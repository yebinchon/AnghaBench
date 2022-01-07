
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkout_cancel_at {int error; int filename; int count; } ;
typedef int git_diff_file ;
typedef int const* git_checkout_notify_t ;


 int GIT_UNUSED (int const*) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int checkout_cancel_cb(
 git_checkout_notify_t why,
 const char *path,
 const git_diff_file *b,
 const git_diff_file *t,
 const git_diff_file *w,
 void *payload)
{
 struct checkout_cancel_at *ca = payload;

 GIT_UNUSED(why); GIT_UNUSED(b); GIT_UNUSED(t); GIT_UNUSED(w);

 ca->count++;

 if (!strcmp(path, ca->filename))
  return ca->error;

 return 0;
}
