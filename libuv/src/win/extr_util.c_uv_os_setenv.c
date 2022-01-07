
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int GetLastError () ;
 int SetEnvironmentVariableW (int *,int *) ;
 int UV_EINVAL ;
 int uv__convert_utf8_to_utf16 (char const*,int,int **) ;
 int uv__free (int *) ;
 int uv_translate_sys_error (int ) ;

int uv_os_setenv(const char* name, const char* value) {
  wchar_t* name_w;
  wchar_t* value_w;
  int r;

  if (name == ((void*)0) || value == ((void*)0))
    return UV_EINVAL;

  r = uv__convert_utf8_to_utf16(name, -1, &name_w);

  if (r != 0)
    return r;

  r = uv__convert_utf8_to_utf16(value, -1, &value_w);

  if (r != 0) {
    uv__free(name_w);
    return r;
  }

  r = SetEnvironmentVariableW(name_w, value_w);
  uv__free(name_w);
  uv__free(value_w);

  if (r == 0)
    return uv_translate_sys_error(GetLastError());

  return 0;
}
