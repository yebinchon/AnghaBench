
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union kvmppc_rm_state {int rm_action; scalar_t__ raw; int in_host; } ;
struct TYPE_2__ {int raw; } ;
struct kvmppc_host_rm_core {TYPE_1__ rm_state; } ;


 union kvmppc_rm_state READ_ONCE (TYPE_1__) ;
 scalar_t__ cmpxchg64 (int *,scalar_t__,scalar_t__) ;
 int smp_wmb () ;

__attribute__((used)) static inline int grab_next_hostcore(int start,
  struct kvmppc_host_rm_core *rm_core, int max, int action)
{
 bool success;
 int core;
 union kvmppc_rm_state old, new;

 for (core = start + 1; core < max; core++) {
  old = new = READ_ONCE(rm_core[core].rm_state);

  if (!old.in_host || old.rm_action)
   continue;


  new.rm_action = action;

  success = cmpxchg64(&rm_core[core].rm_state.raw,
      old.raw, new.raw) == old.raw;
  if (success) {






   smp_wmb();
   return core;
  }
 }

 return -1;
}
