
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int hooks_t ;
struct TYPE_4__ {int in_use; int hooks; } ;
typedef TYPE_1__ hooks_internal_t ;


 int ATOMIC_RELAXED ;
 int HOOK_MAX ;
 int assert (int) ;
 scalar_t__ atomic_load_u (int *,int ) ;
 int atomic_store_u (int *,scalar_t__,int ) ;
 void* hooks ;
 int nhooks ;
 int seq_store_hooks (void*,TYPE_1__*) ;
 int seq_try_load_hooks (TYPE_1__*,void*) ;

__attribute__((used)) static void *
hook_install_locked(hooks_t *to_install) {
 hooks_internal_t hooks_internal;
 for (int i = 0; i < HOOK_MAX; i++) {
  bool success = seq_try_load_hooks(&hooks_internal, &hooks[i]);

  assert(success);
  if (!hooks_internal.in_use) {
   hooks_internal.hooks = *to_install;
   hooks_internal.in_use = 1;
   seq_store_hooks(&hooks[i], &hooks_internal);
   atomic_store_u(&nhooks,
       atomic_load_u(&nhooks, ATOMIC_RELAXED) + 1,
       ATOMIC_RELAXED);
   return &hooks[i];
  }
 }
 return ((void*)0);
}
