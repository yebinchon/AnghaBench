
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef size_t DWORD ;


 size_t ARRAY_SIZE (int*) ;
 int CP_UTF8 ;
 int GetLastError () ;
 size_t GetTempPathW (size_t,int*) ;
 int MAX_PATH ;
 int UV_EINVAL ;
 int UV_EIO ;
 int UV_ENOBUFS ;
 size_t WideCharToMultiByte (int ,int ,int*,int,char*,size_t,int *,int *) ;
 int uv_translate_sys_error (int ) ;

int uv_os_tmpdir(char* buffer, size_t* size) {
  wchar_t path[MAX_PATH + 2];
  DWORD bufsize;
  size_t len;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  len = GetTempPathW(ARRAY_SIZE(path), path);

  if (len == 0) {
    return uv_translate_sys_error(GetLastError());
  } else if (len > ARRAY_SIZE(path)) {

    return UV_EIO;
  }



  if (path[len - 1] == L'\\' &&
      !(len == 3 && path[1] == L':')) {
    len--;
    path[len] = L'\0';
  }


  bufsize = WideCharToMultiByte(CP_UTF8, 0, path, -1, ((void*)0), 0, ((void*)0), ((void*)0));

  if (bufsize == 0) {
    return uv_translate_sys_error(GetLastError());
  } else if (bufsize > *size) {
    *size = bufsize;
    return UV_ENOBUFS;
  }


  bufsize = WideCharToMultiByte(CP_UTF8,
                                0,
                                path,
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
