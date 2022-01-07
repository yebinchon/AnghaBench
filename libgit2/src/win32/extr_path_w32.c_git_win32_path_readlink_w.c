
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
typedef int git_win32_path ;
typedef int buf ;
typedef int WCHAR ;
struct TYPE_6__ {int SubstituteNameOffset; int SubstituteNameLength; int PathBuffer; } ;
struct TYPE_5__ {int SubstituteNameOffset; int SubstituteNameLength; int PathBuffer; } ;
struct TYPE_7__ {int ReparseTag; TYPE_2__ MountPointReparseBuffer; TYPE_1__ SymbolicLinkReparseBuffer; } ;
typedef scalar_t__ HANDLE ;
typedef TYPE_3__ GIT_REPARSE_DATA_BUFFER ;
typedef int DWORD ;
typedef int BYTE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileW (int const,int ,int,int *,int ,int,int *) ;
 int DeviceIoControl (scalar_t__,int ,int *,int ,TYPE_3__*,int,int *,int *) ;
 int EINVAL ;
 int ENOENT ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_FLAG_OPEN_REPARSE_POINT ;
 int FILE_SHARE_DELETE ;
 int FILE_SHARE_READ ;
 int FSCTL_GET_REPARSE_POINT ;
 int GENERIC_READ ;
 size_t GIT_WIN_PATH_UTF16 ;
 scalar_t__ INVALID_HANDLE_VALUE ;


 int MAXIMUM_REPARSE_DATA_BUFFER_SIZE ;
 int OPEN_EXISTING ;
 int errno ;
 size_t git_win32_path_remove_namespace (int *,size_t) ;
 scalar_t__ path_is_volume (int *,size_t) ;
 int wcscpy (int ,int *) ;

int git_win32_path_readlink_w(git_win32_path dest, const git_win32_path path)
{
 BYTE buf[MAXIMUM_REPARSE_DATA_BUFFER_SIZE];
 GIT_REPARSE_DATA_BUFFER *reparse_buf = (GIT_REPARSE_DATA_BUFFER *)buf;
 HANDLE handle = ((void*)0);
 DWORD ioctl_ret;
 wchar_t *target;
 size_t target_len;

 int error = -1;

 handle = CreateFileW(path, GENERIC_READ,
  FILE_SHARE_READ | FILE_SHARE_DELETE, ((void*)0), OPEN_EXISTING,
  FILE_FLAG_OPEN_REPARSE_POINT | FILE_FLAG_BACKUP_SEMANTICS, ((void*)0));

 if (handle == INVALID_HANDLE_VALUE) {
  errno = ENOENT;
  return -1;
 }

 if (!DeviceIoControl(handle, FSCTL_GET_REPARSE_POINT, ((void*)0), 0,
  reparse_buf, sizeof(buf), &ioctl_ret, ((void*)0))) {
  errno = EINVAL;
  goto on_error;
 }

 switch (reparse_buf->ReparseTag) {
 case 128:
  target = reparse_buf->SymbolicLinkReparseBuffer.PathBuffer +
   (reparse_buf->SymbolicLinkReparseBuffer.SubstituteNameOffset / sizeof(WCHAR));
  target_len = reparse_buf->SymbolicLinkReparseBuffer.SubstituteNameLength / sizeof(WCHAR);
 break;
 case 129:
  target = reparse_buf->MountPointReparseBuffer.PathBuffer +
   (reparse_buf->MountPointReparseBuffer.SubstituteNameOffset / sizeof(WCHAR));
  target_len = reparse_buf->MountPointReparseBuffer.SubstituteNameLength / sizeof(WCHAR);
 break;
 default:
  errno = EINVAL;
  goto on_error;
 }

 if (path_is_volume(target, target_len)) {



  errno = EINVAL;
  error = -1;
 } else if (target_len) {

  target_len = git_win32_path_remove_namespace(target, target_len);



  if (GIT_WIN_PATH_UTF16 > target_len) {
   wcscpy(dest, target);
   error = (int)target_len;
  }
 }

on_error:
 CloseHandle(handle);
 return error;
}
