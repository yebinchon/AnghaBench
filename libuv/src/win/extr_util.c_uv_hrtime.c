
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UV__NANOSEC ;
 int uv__hrtime (int ) ;
 int uv__once_init () ;

uint64_t uv_hrtime(void) {
  uv__once_init();
  return uv__hrtime(UV__NANOSEC);
}
