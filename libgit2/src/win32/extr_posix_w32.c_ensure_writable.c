
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int DWORD ;


 int FILE_ATTRIBUTE_READONLY ;
 int GIT_RETRY ;
 int GetFileAttributesW (int *) ;
 int INVALID_FILE_ATTRIBUTES ;
 int SetFileAttributesW (int *,int) ;
 int set_errno () ;

__attribute__((used)) static int ensure_writable(wchar_t *path)
{
 DWORD attrs;

 if ((attrs = GetFileAttributesW(path)) == INVALID_FILE_ATTRIBUTES)
  goto on_error;

 if ((attrs & FILE_ATTRIBUTE_READONLY) == 0)
  return 0;

 if (!SetFileAttributesW(path, (attrs & ~FILE_ATTRIBUTE_READONLY)))
  goto on_error;

 return GIT_RETRY;

on_error:
 set_errno();
 return -1;
}
