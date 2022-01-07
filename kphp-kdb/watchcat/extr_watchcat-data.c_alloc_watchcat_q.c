
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int watchcat ;


 int * dl_malloc (int ) ;
 int get_watchcat_size_q () ;

inline watchcat *alloc_watchcat_q (void) {
  return dl_malloc (get_watchcat_size_q());
}
