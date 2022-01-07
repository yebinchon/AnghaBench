
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t DWORD ;


 int CP_UTF8 ;
 int ERROR_SUCCESS ;
 size_t GetEnvironmentVariableW (int *,int *,int) ;
 int GetLastError () ;
 int MAX_ENV_VAR_LENGTH ;
 int SetLastError (int) ;
 int UV_EINVAL ;
 int UV_ENOBUFS ;
 size_t WideCharToMultiByte (int ,int ,int *,int,char*,size_t,int *,int *) ;
 int assert (int) ;
 int uv__convert_utf8_to_utf16 (char const*,int,int **) ;
 int uv__free (int *) ;
 int uv_translate_sys_error (int) ;

int uv_os_getenv(const char* name, char* buffer, size_t* size) {
  wchar_t var[MAX_ENV_VAR_LENGTH];
  wchar_t* name_w;
  DWORD bufsize;
  size_t len;
  int r;

  if (name == ((void*)0) || buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  r = uv__convert_utf8_to_utf16(name, -1, &name_w);

  if (r != 0)
    return r;

  SetLastError(ERROR_SUCCESS);
  len = GetEnvironmentVariableW(name_w, var, MAX_ENV_VAR_LENGTH);
  uv__free(name_w);
  assert(len < MAX_ENV_VAR_LENGTH);

  if (len == 0) {
    r = GetLastError();
    if (r != ERROR_SUCCESS)
      return uv_translate_sys_error(r);
  }


  bufsize = WideCharToMultiByte(CP_UTF8, 0, var, -1, ((void*)0), 0, ((void*)0), ((void*)0));

  if (bufsize == 0) {
    return uv_translate_sys_error(GetLastError());
  } else if (bufsize > *size) {
    *size = bufsize;
    return UV_ENOBUFS;
  }


  bufsize = WideCharToMultiByte(CP_UTF8,
                                0,
                                var,
                                -1,
                                buffer,
                                *size,
                                ((void*)0),
                                ((void*)0));

  if (bufsize == 0)
    return uv_translate_sys_error(GetLastError());

  *size = bufsize - 1;
  return 0;
}
