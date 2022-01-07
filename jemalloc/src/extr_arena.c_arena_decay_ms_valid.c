
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int ssize_t ;


 int KQU (int) ;
 int NSTIME_SEC_MAX ;

__attribute__((used)) static bool
arena_decay_ms_valid(ssize_t decay_ms) {
 if (decay_ms < -1) {
  return 0;
 }
 if (decay_ms == -1 || (uint64_t)decay_ms <= NSTIME_SEC_MAX *
     KQU(1000)) {
  return 1;
 }
 return 0;
}
