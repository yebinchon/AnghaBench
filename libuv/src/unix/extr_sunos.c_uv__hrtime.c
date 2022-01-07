
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_clocktype_t ;
typedef int uint64_t ;


 int gethrtime () ;

uint64_t uv__hrtime(uv_clocktype_t type) {
  return gethrtime();
}
