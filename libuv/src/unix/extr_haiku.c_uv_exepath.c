
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ status_t ;
typedef scalar_t__ ssize_t ;
typedef int abspath ;


 int B_APP_IMAGE_SYMBOL ;
 int B_FIND_PATH_IMAGE_PATH ;
 scalar_t__ B_OK ;
 int B_PATH_NAME_LENGTH ;
 int UV_EINVAL ;
 int UV__ERR (scalar_t__) ;
 scalar_t__ find_path (int ,int ,int *,char*,int) ;
 scalar_t__ uv__strscpy (char*,char*,size_t) ;

int uv_exepath(char* buffer, size_t* size) {
  char abspath[B_PATH_NAME_LENGTH];
  status_t status;
  ssize_t abspath_len;

  if (buffer == ((void*)0) || size == ((void*)0) || *size == 0)
    return UV_EINVAL;

  status = find_path(B_APP_IMAGE_SYMBOL, B_FIND_PATH_IMAGE_PATH, ((void*)0), abspath,
                     sizeof(abspath));
  if (status != B_OK)
    return UV__ERR(status);

  abspath_len = uv__strscpy(buffer, abspath, *size);
  *size -= 1;
  if (abspath_len >= 0 && *size > (size_t)abspath_len)
    *size = (size_t)abspath_len;

  return 0;
}
