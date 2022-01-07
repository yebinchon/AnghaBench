
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_UTF8 ;
 int GetLastError () ;
 int MultiByteToWideChar (int ,int ,char const*,int,int*,int) ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int uv__free (int*) ;
 int* uv__malloc (int) ;
 int uv_translate_sys_error (int ) ;

int uv__convert_utf8_to_utf16(const char* utf8, int utf8len, WCHAR** utf16) {
  int bufsize;

  if (utf8 == ((void*)0))
    return UV_EINVAL;


  bufsize = MultiByteToWideChar(CP_UTF8, 0, utf8, utf8len, ((void*)0), 0);

  if (bufsize == 0)
    return uv_translate_sys_error(GetLastError());




  *utf16 = uv__malloc(sizeof(WCHAR) * (bufsize + 1));

  if (*utf16 == ((void*)0))
    return UV_ENOMEM;


  bufsize = MultiByteToWideChar(CP_UTF8, 0, utf8, utf8len, *utf16, bufsize);

  if (bufsize == 0) {
    uv__free(*utf16);
    *utf16 = ((void*)0);
    return uv_translate_sys_error(GetLastError());
  }

  (*utf16)[bufsize] = L'\0';
  return 0;
}
