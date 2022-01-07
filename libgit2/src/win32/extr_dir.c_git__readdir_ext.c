
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct git__dirent {scalar_t__ d_ino; int d_name; } ;
struct TYPE_5__ {int dwFileAttributes; int cFileName; } ;
struct TYPE_4__ {scalar_t__ h; TYPE_3__ f; int dir; scalar_t__ first; } ;
typedef TYPE_1__ git__DIR ;


 scalar_t__ ERROR_NO_MORE_FILES ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FindNextFileW (scalar_t__,TYPE_3__*) ;
 int GIT_ERROR_OS ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int git_error_set (int ,char*,int ) ;
 scalar_t__ git_win32_path_to_utf8 (int ,int ) ;

int git__readdir_ext(
 git__DIR *d,
 struct git__dirent *entry,
 struct git__dirent **result,
 int *is_dir)
{
 if (!d || !entry || !result || d->h == INVALID_HANDLE_VALUE)
  return -1;

 *result = ((void*)0);

 if (d->first)
  d->first = 0;
 else if (!FindNextFileW(d->h, &d->f)) {
  if (GetLastError() == ERROR_NO_MORE_FILES)
   return 0;
  git_error_set(GIT_ERROR_OS, "could not read from directory '%s'", d->dir);
  return -1;
 }


 if (git_win32_path_to_utf8(entry->d_name, d->f.cFileName) < 0)
  return -1;

 entry->d_ino = 0;

 *result = entry;

 if (is_dir != ((void*)0))
  *is_dir = ((d->f.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) != 0);

 return 0;
}
