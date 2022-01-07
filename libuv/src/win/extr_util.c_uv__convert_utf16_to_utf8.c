
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int CP_UTF8 ;
 int GetLastError () ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int WideCharToMultiByte (int ,int ,int const*,int,char*,int,int *,int *) ;
 int uv__free (char*) ;
 char* uv__malloc (int) ;
 int uv_translate_sys_error (int ) ;

int uv__convert_utf16_to_utf8(const WCHAR* utf16, int utf16len, char** utf8) {
  DWORD bufsize;

  if (utf16 == ((void*)0))
    return UV_EINVAL;


  bufsize = WideCharToMultiByte(CP_UTF8,
                                0,
                                utf16,
                                utf16len,
                                ((void*)0),
                                0,
                                ((void*)0),
                                ((void*)0));

  if (bufsize == 0)
    return uv_translate_sys_error(GetLastError());




  *utf8 = uv__malloc(bufsize + 1);

  if (*utf8 == ((void*)0))
    return UV_ENOMEM;


  bufsize = WideCharToMultiByte(CP_UTF8,
                                0,
                                utf16,
                                utf16len,
                                *utf8,
                                bufsize,
                                ((void*)0),
                                ((void*)0));

  if (bufsize == 0) {
    uv__free(*utf8);
    *utf8 = ((void*)0);
    return uv_translate_sys_error(GetLastError());
  }

  (*utf8)[bufsize] = '\0';
  return 0;
}
