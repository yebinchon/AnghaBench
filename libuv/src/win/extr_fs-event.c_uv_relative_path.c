
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int ERROR_OUTOFMEMORY ;
 int _wcsnicmp (char const*,char const*,size_t) ;
 int assert (int) ;
 char* uv__malloc (size_t) ;
 int uv_fatal_error (int ,char*) ;
 size_t wcslen (char const*) ;
 int wcsncpy (char*,char const*,size_t) ;

__attribute__((used)) static void uv_relative_path(const WCHAR* filename,
                             const WCHAR* dir,
                             WCHAR** relpath) {
  size_t relpathlen;
  size_t filenamelen = wcslen(filename);
  size_t dirlen = wcslen(dir);
  assert(!_wcsnicmp(filename, dir, dirlen));
  if (dirlen > 0 && dir[dirlen - 1] == '\\')
    dirlen--;
  relpathlen = filenamelen - dirlen - 1;
  *relpath = uv__malloc((relpathlen + 1) * sizeof(WCHAR));
  if (!*relpath)
    uv_fatal_error(ERROR_OUTOFMEMORY, "uv__malloc");
  wcsncpy(*relpath, filename + dirlen + 1, relpathlen);
  (*relpath)[relpathlen] = L'\0';
}
