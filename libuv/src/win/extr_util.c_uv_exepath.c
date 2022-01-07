
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int CP_UTF8 ;
 int GetLastError () ;
 int GetModuleFileNameW (int *,int*,int) ;
 int UV_EINVAL ;
 int UV_ENOMEM ;
 int WideCharToMultiByte (int ,int ,int*,int,char*,int,int *,int *) ;
 int uv__free (int*) ;
 scalar_t__ uv__malloc (int) ;
 int uv_translate_sys_error (int) ;

int uv_exepath(char* buffer, size_t* size_ptr) {
  int utf8_len, utf16_buffer_len, utf16_len;
  WCHAR* utf16_buffer;
  int err;

  if (buffer == ((void*)0) || size_ptr == ((void*)0) || *size_ptr == 0) {
    return UV_EINVAL;
  }

  if (*size_ptr > 32768) {

    utf16_buffer_len = 32768;
  } else {
    utf16_buffer_len = (int) *size_ptr;
  }

  utf16_buffer = (WCHAR*) uv__malloc(sizeof(WCHAR) * utf16_buffer_len);
  if (!utf16_buffer) {
    return UV_ENOMEM;
  }


  utf16_len = GetModuleFileNameW(((void*)0), utf16_buffer, utf16_buffer_len);
  if (utf16_len <= 0) {
    err = GetLastError();
    goto error;
  }


  utf16_buffer[utf16_len] = L'\0';


  utf8_len = WideCharToMultiByte(CP_UTF8,
                                 0,
                                 utf16_buffer,
                                 -1,
                                 buffer,
                                 (int) *size_ptr,
                                 ((void*)0),
                                 ((void*)0));
  if (utf8_len == 0) {
    err = GetLastError();
    goto error;
  }

  uv__free(utf16_buffer);



  *size_ptr = utf8_len - 1;
  return 0;

 error:
  uv__free(utf16_buffer);
  return uv_translate_sys_error(err);
}
