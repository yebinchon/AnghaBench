
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_handle_type ;
typedef scalar_t__ uv_file ;
typedef int HANDLE ;
typedef int DWORD ;





 int GetConsoleMode (int ,int *) ;
 int GetFileType (int ) ;
 int UV_FILE ;
 int UV_NAMED_PIPE ;
 int UV_TTY ;
 int UV_UNKNOWN_HANDLE ;
 int uv__get_osfhandle (scalar_t__) ;

uv_handle_type uv_guess_handle(uv_file file) {
  HANDLE handle;
  DWORD mode;

  if (file < 0) {
    return UV_UNKNOWN_HANDLE;
  }

  handle = uv__get_osfhandle(file);

  switch (GetFileType(handle)) {
    case 130:
      if (GetConsoleMode(handle, &mode)) {
        return UV_TTY;
      } else {
        return UV_FILE;
      }

    case 128:
      return UV_NAMED_PIPE;

    case 129:
      return UV_FILE;

    default:
      return UV_UNKNOWN_HANDLE;
  }
}
