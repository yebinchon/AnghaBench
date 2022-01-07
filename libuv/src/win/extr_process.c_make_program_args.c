
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef size_t DWORD ;


 int CP_UTF8 ;
 int ERROR_OUTOFMEMORY ;
 int GetLastError () ;
 size_t MultiByteToWideChar (int ,int ,char*,int,int *,int) ;
 int * quote_cmd_arg (int *,int *) ;
 int uv__free (int *) ;
 scalar_t__ uv__malloc (size_t) ;
 int wcscpy (int *,int *) ;

int make_program_args(char** args, int verbatim_arguments, WCHAR** dst_ptr) {
  char** arg;
  WCHAR* dst = ((void*)0);
  WCHAR* temp_buffer = ((void*)0);
  size_t dst_len = 0;
  size_t temp_buffer_len = 0;
  WCHAR* pos;
  int arg_count = 0;
  int err = 0;


  for (arg = args; *arg; arg++) {
    DWORD arg_len;

    arg_len = MultiByteToWideChar(CP_UTF8,
                                  0,
                                  *arg,
                                  -1,
                                  ((void*)0),
                                  0);
    if (arg_len == 0) {
      return GetLastError();
    }

    dst_len += arg_len;

    if (arg_len > temp_buffer_len)
      temp_buffer_len = arg_len;

    arg_count++;
  }



  dst_len = dst_len * 2 + arg_count * 2;


  dst = (WCHAR*) uv__malloc(dst_len * sizeof(WCHAR));
  if (dst == ((void*)0)) {
    err = ERROR_OUTOFMEMORY;
    goto error;
  }


  temp_buffer = (WCHAR*) uv__malloc(temp_buffer_len * sizeof(WCHAR));
  if (temp_buffer == ((void*)0)) {
    err = ERROR_OUTOFMEMORY;
    goto error;
  }

  pos = dst;
  for (arg = args; *arg; arg++) {
    DWORD arg_len;


    arg_len = MultiByteToWideChar(CP_UTF8,
                                  0,
                                  *arg,
                                  -1,
                                  temp_buffer,
                                  (int) (dst + dst_len - pos));
    if (arg_len == 0) {
      err = GetLastError();
      goto error;
    }

    if (verbatim_arguments) {

      wcscpy(pos, temp_buffer);
      pos += arg_len - 1;
    } else {

      pos = quote_cmd_arg(temp_buffer, pos);
    }

    *pos++ = *(arg + 1) ? L' ' : L'\0';
  }

  uv__free(temp_buffer);

  *dst_ptr = dst;
  return 0;

error:
  uv__free(dst);
  uv__free(temp_buffer);
  return err;
}
