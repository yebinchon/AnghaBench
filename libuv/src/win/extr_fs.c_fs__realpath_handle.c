
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int WCHAR ;
typedef int HANDLE ;
typedef int DWORD ;


 int ERROR_INVALID_HANDLE ;
 int ERROR_OUTOFMEMORY ;
 scalar_t__ GetFinalPathNameByHandleW (int ,int*,int,int ) ;
 int LONG_PATH_PREFIX ;
 int LONG_PATH_PREFIX_LEN ;
 int SetLastError (int ) ;
 int UNC_PATH_PREFIX ;
 int UNC_PATH_PREFIX_LEN ;
 int VOLUME_NAME_DOS ;
 int fs__wide_to_utf8 (int*,int,char**,int *) ;
 int uv__free (int*) ;
 int* uv__malloc (int) ;
 scalar_t__ wcsncmp (int*,int ,int ) ;

__attribute__((used)) static ssize_t fs__realpath_handle(HANDLE handle, char** realpath_ptr) {
  int r;
  DWORD w_realpath_len;
  WCHAR* w_realpath_ptr = ((void*)0);
  WCHAR* w_realpath_buf;

  w_realpath_len = GetFinalPathNameByHandleW(handle, ((void*)0), 0, VOLUME_NAME_DOS);
  if (w_realpath_len == 0) {
    return -1;
  }

  w_realpath_buf = uv__malloc((w_realpath_len + 1) * sizeof(WCHAR));
  if (w_realpath_buf == ((void*)0)) {
    SetLastError(ERROR_OUTOFMEMORY);
    return -1;
  }
  w_realpath_ptr = w_realpath_buf;

  if (GetFinalPathNameByHandleW(
          handle, w_realpath_ptr, w_realpath_len, VOLUME_NAME_DOS) == 0) {
    uv__free(w_realpath_buf);
    SetLastError(ERROR_INVALID_HANDLE);
    return -1;
  }


  if (wcsncmp(w_realpath_ptr,
              UNC_PATH_PREFIX,
              UNC_PATH_PREFIX_LEN) == 0) {
    w_realpath_ptr += 6;
    *w_realpath_ptr = L'\\';
    w_realpath_len -= 6;
  } else if (wcsncmp(w_realpath_ptr,
                      LONG_PATH_PREFIX,
                      LONG_PATH_PREFIX_LEN) == 0) {
    w_realpath_ptr += 4;
    w_realpath_len -= 4;
  } else {
    uv__free(w_realpath_buf);
    SetLastError(ERROR_INVALID_HANDLE);
    return -1;
  }

  r = fs__wide_to_utf8(w_realpath_ptr, w_realpath_len, realpath_ptr, ((void*)0));
  uv__free(w_realpath_buf);
  return r;
}
