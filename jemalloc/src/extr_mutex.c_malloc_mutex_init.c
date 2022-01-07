
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int witness_rank_t ;
typedef int pthread_mutexattr_t ;
struct TYPE_5__ {int witness; scalar_t__ lock_order; int lock; struct TYPE_5__* postponed_next; int prof_data; } ;
typedef TYPE_1__ malloc_mutex_t ;
typedef scalar_t__ malloc_mutex_lock_order_t ;


 int InitializeCriticalSectionAndSpinCount (int *,int ) ;
 int InitializeSRWLock (int *) ;
 int MALLOC_MUTEX_TYPE ;
 int OS_UNFAIR_LOCK_INIT ;
 int _CRT_SPINCOUNT ;
 scalar_t__ _pthread_mutex_init_calloc_cb (int *,int ) ;
 int bootstrap_calloc ;
 scalar_t__ config_debug ;
 scalar_t__ malloc_mutex_address_ordered ;
 int * mutex_addr_comp ;
 int mutex_prof_data_init (int *) ;
 scalar_t__ postpone_init ;
 TYPE_1__* postponed_mutexes ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;
 int witness_init (int *,char const*,int ,int *,TYPE_1__*) ;

bool
malloc_mutex_init(malloc_mutex_t *mutex, const char *name,
    witness_rank_t rank, malloc_mutex_lock_order_t lock_order) {
 mutex_prof_data_init(&mutex->prof_data);
 pthread_mutexattr_t attr;

 if (pthread_mutexattr_init(&attr) != 0) {
  return 1;
 }
 pthread_mutexattr_settype(&attr, MALLOC_MUTEX_TYPE);
 if (pthread_mutex_init(&mutex->lock, &attr) != 0) {
  pthread_mutexattr_destroy(&attr);
  return 1;
 }
 pthread_mutexattr_destroy(&attr);

 if (config_debug) {
  mutex->lock_order = lock_order;
  if (lock_order == malloc_mutex_address_ordered) {
   witness_init(&mutex->witness, name, rank,
       mutex_addr_comp, mutex);
  } else {
   witness_init(&mutex->witness, name, rank, ((void*)0), ((void*)0));
  }
 }
 return 0;
}
