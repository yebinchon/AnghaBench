
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int homedir; } ;
typedef TYPE_1__ uv_passwd_t ;


 int UV_ENOBUFS ;
 int UV_ENOENT ;
 int memcpy (char*,int ,size_t) ;
 size_t strlen (int ) ;
 int uv__getpwuid_r (TYPE_1__*) ;
 int uv_os_free_passwd (TYPE_1__*) ;
 int uv_os_getenv (char*,char*,size_t*) ;

int uv_os_homedir(char* buffer, size_t* size) {
  uv_passwd_t pwd;
  size_t len;
  int r;




  r = uv_os_getenv("HOME", buffer, size);

  if (r != UV_ENOENT)
    return r;


  r = uv__getpwuid_r(&pwd);

  if (r != 0) {
    return r;
  }

  len = strlen(pwd.homedir);

  if (len >= *size) {
    *size = len + 1;
    uv_os_free_passwd(&pwd);
    return UV_ENOBUFS;
  }

  memcpy(buffer, pwd.homedir, len + 1);
  *size = len;
  uv_os_free_passwd(&pwd);

  return 0;
}
