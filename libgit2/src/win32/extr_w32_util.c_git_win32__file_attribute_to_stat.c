
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct stat {int st_mode; int st_size; } ;
typedef int git_win32_path ;
struct TYPE_3__ {int dwFileAttributes; int ftLastWriteTime; int ftLastAccessTime; int ftCreationTime; int nFileSizeLow; int nFileSizeHigh; } ;
typedef TYPE_1__ WIN32_FILE_ATTRIBUTE_DATA ;


 int FILE_ATTRIBUTE_REPARSE_POINT ;
 int GIT_ERROR_OS ;
 int S_IFLNK ;
 int S_IFMT ;
 int git__utf16_to_8 (int *,int ,int ) ;
 int git_error_set (int ,char*,int const*) ;
 int git_win32__stat_init (struct stat*,int,int ,int ,int ,int ,int ) ;
 scalar_t__ git_win32_path_readlink_w (int ,int const*) ;

int git_win32__file_attribute_to_stat(
 struct stat *st,
 const WIN32_FILE_ATTRIBUTE_DATA *attrdata,
 const wchar_t *path)
{
 git_win32__stat_init(st,
  attrdata->dwFileAttributes,
  attrdata->nFileSizeHigh,
  attrdata->nFileSizeLow,
  attrdata->ftCreationTime,
  attrdata->ftLastAccessTime,
  attrdata->ftLastWriteTime);

 if (attrdata->dwFileAttributes & FILE_ATTRIBUTE_REPARSE_POINT && path) {
  git_win32_path target;

  if (git_win32_path_readlink_w(target, path) >= 0) {
   st->st_mode = (st->st_mode & ~S_IFMT) | S_IFLNK;



   if ((st->st_size = git__utf16_to_8(((void*)0), 0, target)) < 0) {
    git_error_set(GIT_ERROR_OS, "could not convert reparse point name for '%ls'", path);
    return -1;
   }
  }
 }

 return 0;
}
