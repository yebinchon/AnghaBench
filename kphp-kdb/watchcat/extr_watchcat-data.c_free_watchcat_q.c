
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int watchcat ;


 int dl_free (int *,int ) ;
 int get_watchcat_size_q () ;

inline void free_watchcat_q (watchcat *w) {
  dl_free (w, get_watchcat_size_q());
}
