
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dss_prec_t ;
struct TYPE_3__ {int dss_prec; } ;
typedef TYPE_1__ arena_t ;


 int ATOMIC_ACQUIRE ;
 int atomic_load_u (int *,int ) ;

dss_prec_t
arena_dss_prec_get(arena_t *arena) {
 return (dss_prec_t)atomic_load_u(&arena->dss_prec, ATOMIC_ACQUIRE);
}
