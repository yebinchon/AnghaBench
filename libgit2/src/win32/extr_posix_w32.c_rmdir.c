
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_win32_path ;


 int EBUSY ;
 int ENOTDIR ;


 int GetLastError () ;
 int _wrmdir (int ) ;
 int errno ;
 scalar_t__ git_win32_path_from_utf8 (int ,char const*) ;

int p_rmdir(const char* path)
{
 git_win32_path buf;
 int error;

 if (git_win32_path_from_utf8(buf, path) < 0)
  return -1;

 error = _wrmdir(buf);

 if (error == -1) {
  switch (GetLastError()) {




   case 128:
    errno = EBUSY;
    break;


   case 129:
    errno = ENOTDIR;
    break;
  }
 }

 return error;
}
