
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_ENV_VAR (char*) ;
 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

int uv_os_tmpdir(char* buffer, size_t* size) {
  const char* buf;
  size_t len;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;
  do { buf = getenv("TMPDIR"); if (buf != ((void*)0)) goto return_buffer; } while (0);
  do { buf = getenv("TMP"); if (buf != ((void*)0)) goto return_buffer; } while (0);
  do { buf = getenv("TEMP"); if (buf != ((void*)0)) goto return_buffer; } while (0);
  do { buf = getenv("TEMPDIR"); if (buf != ((void*)0)) goto return_buffer; } while (0);







    buf = "/tmp";


return_buffer:
  len = strlen(buf);

  if (len >= *size) {
    *size = len + 1;
    return UV_ENOBUFS;
  }


  if (len > 1 && buf[len - 1] == '/') {
    len--;
  }

  memcpy(buffer, buf, len + 1);
  buffer[len] = '\0';
  *size = len;

  return 0;
}
