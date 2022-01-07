
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IOV_MAX ;
 int _SC_IOV_MAX ;
 int sysconf (int ) ;

int uv__getiovmax(void) {
  return 1024;

}
