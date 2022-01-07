
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int ERROR_OUTOFMEMORY ;
 int GetCurrentDirectoryW (int,char*) ;
 int MAX_PATH ;
 int uv__free (char*) ;
 scalar_t__ uv__malloc (size_t) ;
 int uv_fatal_error (int ,char*) ;
 char* wcsdup (char const*) ;
 size_t wcslen (char const*) ;
 int wcsncpy (char*,char const*,size_t) ;

__attribute__((used)) static int uv_split_path(const WCHAR* filename, WCHAR** dir,
    WCHAR** file) {
  size_t len, i;

  if (filename == ((void*)0)) {
    if (dir != ((void*)0))
      *dir = ((void*)0);
    *file = ((void*)0);
    return 0;
  }

  len = wcslen(filename);
  i = len;
  while (i > 0 && filename[--i] != '\\' && filename[i] != '/');

  if (i == 0) {
    if (dir) {
      *dir = (WCHAR*)uv__malloc((MAX_PATH + 1) * sizeof(WCHAR));
      if (!*dir) {
        uv_fatal_error(ERROR_OUTOFMEMORY, "uv__malloc");
      }

      if (!GetCurrentDirectoryW(MAX_PATH, *dir)) {
        uv__free(*dir);
        *dir = ((void*)0);
        return -1;
      }
    }

    *file = wcsdup(filename);
  } else {
    if (dir) {
      *dir = (WCHAR*)uv__malloc((i + 2) * sizeof(WCHAR));
      if (!*dir) {
        uv_fatal_error(ERROR_OUTOFMEMORY, "uv__malloc");
      }
      wcsncpy(*dir, filename, i + 1);
      (*dir)[i + 1] = L'\0';
    }

    *file = (WCHAR*)uv__malloc((len - i) * sizeof(WCHAR));
    if (!*file) {
      uv_fatal_error(ERROR_OUTOFMEMORY, "uv__malloc");
    }
    wcsncpy(*file, filename + i + 1, len - i - 1);
    (*file)[len - i - 1] = L'\0';
  }

  return 0;
}
