
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef scalar_t__ HANDLE ;
typedef int BY_HANDLE_FILE_INFORMATION ;


 int EBADF ;
 int GetFileInformationByHandle (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int _get_osfhandle (int) ;
 int errno ;
 int git_win32__file_information_to_stat (struct stat*,int *) ;

int p_fstat(int fd, struct stat *buf)
{
 BY_HANDLE_FILE_INFORMATION fhInfo;

 HANDLE fh = (HANDLE)_get_osfhandle(fd);

 if (fh == INVALID_HANDLE_VALUE ||
  !GetFileInformationByHandle(fh, &fhInfo)) {
  errno = EBADF;
  return -1;
 }

 git_win32__file_information_to_stat(buf, &fhInfo);
 return 0;
}
