
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int uv_translate_sys_error(int sys_errno) {

  return sys_errno <= 0 ? sys_errno : -sys_errno;
}
