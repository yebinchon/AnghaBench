
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;


 int prof_log_stop (int ) ;
 int * tsd_fetch () ;
 int tsd_tsdn (int *) ;

__attribute__((used)) static void
prof_log_stop_final(void) {
 tsd_t *tsd = tsd_fetch();
 prof_log_stop(tsd_tsdn(tsd));
}
