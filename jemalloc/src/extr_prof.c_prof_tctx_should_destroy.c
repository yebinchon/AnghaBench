
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tsdn_t ;
struct TYPE_6__ {scalar_t__ curobjs; } ;
struct TYPE_7__ {scalar_t__ prepared; TYPE_2__ cnts; TYPE_1__* tdata; } ;
typedef TYPE_3__ prof_tctx_t ;
struct TYPE_5__ {int lock; } ;


 int malloc_mutex_assert_owner (int *,int ) ;
 scalar_t__ opt_prof_accum ;

__attribute__((used)) static bool
prof_tctx_should_destroy(tsdn_t *tsdn, prof_tctx_t *tctx) {
 malloc_mutex_assert_owner(tsdn, tctx->tdata->lock);

 if (opt_prof_accum) {
  return 0;
 }
 if (tctx->cnts.curobjs != 0) {
  return 0;
 }
 if (tctx->prepared) {
  return 0;
 }
 return 1;
}
