
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int UV_CLOCK_PRECISE ;
 int uv__hrtime (int ) ;

uint64_t uv_hrtime(void) {
  return uv__hrtime(UV_CLOCK_PRECISE);
}
