
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_clocktype_t ;
typedef unsigned long long uint64_t ;


 unsigned long long TOD_RES ;
 int __stckf (unsigned long long*) ;

uint64_t uv__hrtime(uv_clocktype_t type) {
  unsigned long long timestamp;
  __stckf(&timestamp);

  return timestamp / TOD_RES;
}
