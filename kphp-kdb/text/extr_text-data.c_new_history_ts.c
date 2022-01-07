
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lrand48 () ;

__attribute__((used)) static inline int new_history_ts (void) {
  return (lrand48() & 0xfffffff) + 0x60000000;
}
