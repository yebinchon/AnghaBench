
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_win32_path ;
struct TYPE_5__ {scalar_t__ h; int first; int f; int dir; } ;
typedef TYPE_1__ git__DIR ;


 scalar_t__ FindFirstFileW (int ,int *) ;
 scalar_t__ GIT_ADD_SIZET_OVERFLOW (size_t*,size_t,int) ;
 int GIT_ERROR_OS ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 TYPE_1__* git__calloc (int,size_t) ;
 int git__free (TYPE_1__*) ;
 int git_error_set (int ,char*,char const*) ;
 int git_win32__findfirstfile_filter (int ,char const*) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

git__DIR *git__opendir(const char *dir)
{
 git_win32_path filter_w;
 git__DIR *new = ((void*)0);
 size_t dirlen, alloclen;

 if (!dir || !git_win32__findfirstfile_filter(filter_w, dir))
  return ((void*)0);

 dirlen = strlen(dir);

 if (GIT_ADD_SIZET_OVERFLOW(&alloclen, sizeof(*new), dirlen) ||
  GIT_ADD_SIZET_OVERFLOW(&alloclen, alloclen, 1) ||
  !(new = git__calloc(1, alloclen)))
  return ((void*)0);

 memcpy(new->dir, dir, dirlen);

 new->h = FindFirstFileW(filter_w, &new->f);

 if (new->h == INVALID_HANDLE_VALUE) {
  git_error_set(GIT_ERROR_OS, "could not open directory '%s'", dir);
  git__free(new);
  return ((void*)0);
 }

 new->first = 1;
 return new;
}
