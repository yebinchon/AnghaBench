
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ dss_prec_t ;
struct TYPE_3__ {int dss_prec; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_RELEASE ;
 int atomic_store_u (int *,unsigned int,int ) ;
 scalar_t__ dss_prec_disabled ;
 int have_dss ;

bool
arena_dss_prec_set(arena_t *arena, dss_prec_t dss_prec) {
 if (!have_dss) {
  return (dss_prec != dss_prec_disabled);
 }
 atomic_store_u(&arena->dss_prec, (unsigned)dss_prec, ATOMIC_RELEASE);
 return 0;
}
