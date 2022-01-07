
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct p_timeval {int dummy; } ;
struct TYPE_6__ {int member_0; } ;
typedef int SYSTEMTIME ;
typedef scalar_t__ HANDLE ;
typedef TYPE_1__ FILETIME ;


 int GetSystemTime (int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ SetFileTime (scalar_t__,int *,TYPE_1__*,TYPE_1__*) ;
 int SystemTimeToFileTime (int *,TYPE_1__*) ;
 scalar_t__ _get_osfhandle (int) ;
 int git_win32__timeval_to_filetime (TYPE_1__*,struct p_timeval const) ;

int p_futimes(int fd, const struct p_timeval times[2])
{
 HANDLE handle;
 FILETIME atime = { 0 }, mtime = { 0 };

 if (times == ((void*)0)) {
  SYSTEMTIME st;

  GetSystemTime(&st);
  SystemTimeToFileTime(&st, &atime);
  SystemTimeToFileTime(&st, &mtime);
 }
 else {
  git_win32__timeval_to_filetime(&atime, times[0]);
  git_win32__timeval_to_filetime(&mtime, times[1]);
 }

 if ((handle = (HANDLE)_get_osfhandle(fd)) == INVALID_HANDLE_VALUE)
  return -1;

 if (SetFileTime(handle, ((void*)0), &atime, &mtime) == 0)
  return -1;

 return 0;
}
