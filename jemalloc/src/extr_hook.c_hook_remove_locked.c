
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int seq_hooks_t ;
struct TYPE_4__ {int in_use; } ;
typedef TYPE_1__ hooks_internal_t ;


 int ATOMIC_RELAXED ;
 int assert (int) ;
 scalar_t__ atomic_load_u (int *,int ) ;
 int atomic_store_u (int *,scalar_t__,int ) ;
 int nhooks ;
 int seq_store_hooks (int *,TYPE_1__*) ;
 int seq_try_load_hooks (TYPE_1__*,int *) ;

__attribute__((used)) static void
hook_remove_locked(seq_hooks_t *to_remove) {
 hooks_internal_t hooks_internal;
 bool success = seq_try_load_hooks(&hooks_internal, to_remove);

 assert(success);

 assert(hooks_internal.in_use);
 hooks_internal.in_use = 0;
 seq_store_hooks(to_remove, &hooks_internal);
 atomic_store_u(&nhooks, atomic_load_u(&nhooks, ATOMIC_RELAXED) - 1,
     ATOMIC_RELAXED);
}
