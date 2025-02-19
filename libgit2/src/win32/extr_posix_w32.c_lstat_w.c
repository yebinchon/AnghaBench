
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct stat {int dummy; } ;
typedef int WIN32_FILE_ATTRIBUTE_DATA ;
typedef int DWORD ;


 scalar_t__ EACCES ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;

 int FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ GetFileAttributesExW (int*,int ,int *) ;
 int GetFileAttributesW (int*) ;
 int GetFileExInfoStandard ;
 int GetLastError () ;
 int INVALID_FILE_ATTRIBUTES ;
 int WIN32_IS_WSEP (int) ;
 scalar_t__ errno ;
 int git_win32__file_attribute_to_stat (struct stat*,int *,int*) ;
 size_t wcslen (int*) ;

__attribute__((used)) static int lstat_w(
 wchar_t *path,
 struct stat *buf,
 bool posix_enotdir)
{
 WIN32_FILE_ATTRIBUTE_DATA fdata;

 if (GetFileAttributesExW(path, GetFileExInfoStandard, &fdata)) {
  if (!buf)
   return 0;

  return git_win32__file_attribute_to_stat(buf, &fdata, path);
 }

 switch (GetLastError()) {
 case 128:
  errno = EACCES;
  break;
 default:
  errno = ENOENT;
  break;
 }




 if (errno == ENOENT && posix_enotdir) {
  size_t path_len = wcslen(path);


  while (1) {
   DWORD attrs;


   for (path_len--; path_len > 0 && !WIN32_IS_WSEP(path[path_len]); path_len--);

   if (path_len <= 0)
    break;

   path[path_len] = L'\0';
   attrs = GetFileAttributesW(path);

   if (attrs != INVALID_FILE_ATTRIBUTES) {
    if (!(attrs & FILE_ATTRIBUTE_DIRECTORY))
     errno = ENOTDIR;
    break;
   }
  }
 }

 return -1;
}
