
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seen_paths {int what; int how; int who; int when; } ;
typedef int git_diff_file ;
typedef int const* git_checkout_notify_t ;


 int GIT_UNUSED (int const*) ;
 scalar_t__ strcmp (char const*,char*) ;

int checkout_notify(
 git_checkout_notify_t why,
 const char *path,
 const git_diff_file *baseline,
 const git_diff_file *target,
 const git_diff_file *workdir,
 void *payload)
{
 struct seen_paths *seen_paths = (struct seen_paths *)payload;

 GIT_UNUSED(why);
 GIT_UNUSED(baseline);
 GIT_UNUSED(target);
 GIT_UNUSED(workdir);

 if (strcmp(path, "what") == 0)
  seen_paths->what = 1;
 else if (strcmp(path, "how") == 0)
  seen_paths->how = 1;
 else if (strcmp(path, "who") == 0)
  seen_paths->who = 1;
 else if (strcmp(path, "when") == 0)
  seen_paths->when = 1;

 return 0;
}
