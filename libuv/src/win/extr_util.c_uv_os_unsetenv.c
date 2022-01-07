
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

int uv_os_unsetenv(const char* name) {
  wchar_t* name_w;
  int r;

  if (name == ((void*)0))
    return UV_EINVAL;

  r = uv__convert_utf8_to_utf16(name, -1, &name_w);

  if (r != 0)
    return r;

  r = SetEnvironmentVariableW(name_w, ((void*)0));
  uv__free(name_w);

  if (r == 0)
    return uv_translate_sys_error(GetLastError());

  return 0;
}
