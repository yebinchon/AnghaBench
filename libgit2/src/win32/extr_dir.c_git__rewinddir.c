
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_win32_path ;
struct TYPE_3__ {int first; int dir; int h; int f; } ;
typedef TYPE_1__ git__DIR ;


 int FindClose (int ) ;
 int FindFirstFileW (int ,int *) ;
 int GIT_ERROR_OS ;
 int INVALID_HANDLE_VALUE ;
 int git_error_set (int ,char*,int ) ;
 int git_win32__findfirstfile_filter (int ,int ) ;

void git__rewinddir(git__DIR *d)
{
 git_win32_path filter_w;

 if (!d)
  return;

 if (d->h != INVALID_HANDLE_VALUE) {
  FindClose(d->h);
  d->h = INVALID_HANDLE_VALUE;
  d->first = 0;
 }

 if (!git_win32__findfirstfile_filter(filter_w, d->dir))
  return;

 d->h = FindFirstFileW(filter_w, &d->f);

 if (d->h == INVALID_HANDLE_VALUE)
  git_error_set(GIT_ERROR_OS, "could not open directory '%s'", d->dir);
 else
  d->first = 1;
}
