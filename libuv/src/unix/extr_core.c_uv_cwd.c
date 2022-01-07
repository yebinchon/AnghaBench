
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int scratch ;


 scalar_t__ ERANGE ;
 int UV_EINVAL ;
 int UV_ENOBUFS ;
 int UV__ERR (scalar_t__) ;
 int UV__PATH_MAX ;
 scalar_t__ errno ;
 int * getcwd (char*,int) ;
 size_t strlen (char*) ;

int uv_cwd(char* buffer, size_t* size) {
  char scratch[1 + UV__PATH_MAX];

  if (buffer == ((void*)0) || size == ((void*)0))
    return UV_EINVAL;


  if (getcwd(buffer, *size) != ((void*)0))
    goto fixup;

  if (errno != ERANGE)
    return UV__ERR(errno);




  if (getcwd(scratch, sizeof(scratch)) == ((void*)0))
    return UV__ERR(errno);

  buffer = scratch;

fixup:

  *size = strlen(buffer);

  if (*size > 1 && buffer[*size - 1] == '/') {
    *size -= 1;
    buffer[*size] = '\0';
  }

  if (buffer == scratch) {
    *size += 1;
    return UV_ENOBUFS;
  }

  return 0;
}
