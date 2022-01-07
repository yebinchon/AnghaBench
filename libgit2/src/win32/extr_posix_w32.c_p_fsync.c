
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;


 int EBADF ;
 int EINVAL ;
 int EIO ;
 scalar_t__ ERROR_INVALID_HANDLE ;
 int FlushFileBuffers (scalar_t__) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int _get_osfhandle (int) ;
 int errno ;
 int p_fsync__cnt ;

int p_fsync(int fd)
{
 HANDLE fh = (HANDLE)_get_osfhandle(fd);

 p_fsync__cnt++;

 if (fh == INVALID_HANDLE_VALUE) {
  errno = EBADF;
  return -1;
 }

 if (!FlushFileBuffers(fh)) {
  DWORD code = GetLastError();

  if (code == ERROR_INVALID_HANDLE)
   errno = EINVAL;
  else
   errno = EIO;

  return -1;
 }

 return 0;
}
