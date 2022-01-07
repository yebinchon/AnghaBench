
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct spin_wait {int node_id; TYPE_3__* prev; TYPE_3__* next; } ;
struct TYPE_7__ {TYPE_3__* lock; } ;
typedef TYPE_1__ arch_spinlock_t ;
struct TYPE_9__ {int spinlock_index; } ;
struct TYPE_8__ {int next; } ;


 int MACHINE_IS_LPAR ;
 struct spin_wait* READ_ONCE (TYPE_3__*) ;
 TYPE_5__ S390_lowcore ;
 int SPINLOCK_LOCKVAL ;
 int WRITE_ONCE (int ,struct spin_wait*) ;
 int _Q_LOCK_CPU_MASK ;
 int _Q_LOCK_MASK ;
 int _Q_LOCK_STEAL_ADD ;
 int _Q_LOCK_STEAL_MASK ;
 int _Q_TAIL_MASK ;
 scalar_t__ __atomic_cmpxchg_bool (TYPE_3__**,int,int) ;
 TYPE_3__* arch_spin_decode_tail (int) ;
 int arch_spin_yield_target (int,struct spin_wait*) ;
 scalar_t__ arch_vcpu_is_preempted (int) ;
 int barrier () ;
 int smp_yield_cpu (int) ;
 int spin_retry ;
 int * spin_wait ;
 struct spin_wait* this_cpu_ptr (int *) ;

__attribute__((used)) static inline void arch_spin_lock_queued(arch_spinlock_t *lp)
{
 struct spin_wait *node, *next;
 int lockval, ix, node_id, tail_id, old, new, owner, count;

 ix = S390_lowcore.spinlock_index++;
 barrier();
 lockval = SPINLOCK_LOCKVAL;
 node = this_cpu_ptr(&spin_wait[ix]);
 node->prev = node->next = ((void*)0);
 node_id = node->node_id;


 while (1) {
  old = READ_ONCE(lp->lock);
  if ((old & _Q_LOCK_CPU_MASK) == 0 &&
      (old & _Q_LOCK_STEAL_MASK) != _Q_LOCK_STEAL_MASK) {







   new = (old ? (old + _Q_LOCK_STEAL_ADD) : 0) | lockval;
   if (__atomic_cmpxchg_bool(&lp->lock, old, new))

    goto out;

   continue;
  }

  new = node_id | (old & _Q_LOCK_MASK);
  if (__atomic_cmpxchg_bool(&lp->lock, old, new))
   break;
 }

 tail_id = old & _Q_TAIL_MASK;
 if (tail_id != 0) {
  node->prev = arch_spin_decode_tail(tail_id);
  WRITE_ONCE(node->prev->next, node);
 }


 owner = arch_spin_yield_target(old, node);
 if (owner && arch_vcpu_is_preempted(owner - 1))
  smp_yield_cpu(owner - 1);


 if (tail_id != 0) {
  count = spin_retry;
  while (READ_ONCE(node->prev) != ((void*)0)) {
   if (count-- >= 0)
    continue;
   count = spin_retry;

   owner = arch_spin_yield_target(old, node);
   if (owner && arch_vcpu_is_preempted(owner - 1))
    smp_yield_cpu(owner - 1);
  }
 }


 count = spin_retry;
 while (1) {
  old = READ_ONCE(lp->lock);
  owner = old & _Q_LOCK_CPU_MASK;
  if (!owner) {
   tail_id = old & _Q_TAIL_MASK;
   new = ((tail_id != node_id) ? tail_id : 0) | lockval;
   if (__atomic_cmpxchg_bool(&lp->lock, old, new))

    break;
   continue;
  }
  if (count-- >= 0)
   continue;
  count = spin_retry;
  if (!MACHINE_IS_LPAR || arch_vcpu_is_preempted(owner - 1))
   smp_yield_cpu(owner - 1);
 }


 if (node_id && tail_id != node_id) {

  while ((next = READ_ONCE(node->next)) == ((void*)0))
   ;
  next->prev = ((void*)0);
 }

 out:
 S390_lowcore.spinlock_index--;
}
