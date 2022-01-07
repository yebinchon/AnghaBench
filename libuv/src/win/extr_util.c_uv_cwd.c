
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int CP_UTF8 ;
 int GetCurrentDirectoryW (int,int*) ;
 int GetLastError () ;
 size_t INT_MAX ;
 int MAX_PATH ;
 int UV_EINVAL ;
 int UV_EIO ;
 int UV_ENOBUFS ;
 int WideCharToMultiByte (int ,int ,int*,int,char*,size_t,int *,int *) ;
 int uv_translate_sys_error (int ) ;

int uv_cwd(char* buffer, size_t* size) {
  DWORD utf16_len;
  WCHAR utf16_buffer[MAX_PATH];
  int r;

  if (buffer == ((void*)0) || size == ((void*)0)) {
    return UV_EINVAL;
  }

  utf16_len = GetCurrentDirectoryW(MAX_PATH, utf16_buffer);
  if (utf16_len == 0) {
    return uv_translate_sys_error(GetLastError());
  } else if (utf16_len > MAX_PATH) {


    return UV_EIO;
  }


  utf16_buffer[utf16_len] = L'\0';



  if (utf16_buffer[utf16_len - 1] == L'\\' &&
      !(utf16_len == 3 && utf16_buffer[1] == L':')) {
    utf16_len--;
    utf16_buffer[utf16_len] = L'\0';
  }


  r = WideCharToMultiByte(CP_UTF8,
                          0,
                          utf16_buffer,
                          -1,
                          ((void*)0),
                          0,
                          ((void*)0),
                          ((void*)0));
  if (r == 0) {
    return uv_translate_sys_error(GetLastError());
  } else if (r > (int) *size) {
    *size = r;
    return UV_ENOBUFS;
  }


  r = WideCharToMultiByte(CP_UTF8,
                          0,
                          utf16_buffer,
                          -1,
                          buffer,
                          *size > INT_MAX ? INT_MAX : (int) *size,
                          ((void*)0),
                          ((void*)0));
  if (r == 0) {
    return uv_translate_sys_error(GetLastError());
  }

  *size = r - 1;
  return 0;
}
