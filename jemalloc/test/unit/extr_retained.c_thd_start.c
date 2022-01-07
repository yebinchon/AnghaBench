
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spin_t ;


 int ATOMIC_ACQUIRE ;
 int ATOMIC_RELEASE ;
 int MALLOCX_ARENA (int ) ;
 int MALLOCX_TCACHE_NONE ;
 unsigned int NEPOCHS ;
 unsigned int PER_THD_NALLOCS ;
 int SPIN_INITIALIZER ;
 int arena_ind ;
 int assert_ptr_not_null (void*,char*) ;
 int assert_u_eq (unsigned int,unsigned int,char*) ;
 int atomic_fetch_add_u (int *,int,int ) ;
 unsigned int atomic_load_u (int *,int ) ;
 int epoch ;
 void* mallocx (int ,int) ;
 int nfinished ;
 int spin_adaptive (int *) ;
 int sz ;

__attribute__((used)) static void *
thd_start(void *arg) {
 for (unsigned next_epoch = 1; next_epoch < NEPOCHS; next_epoch++) {

  unsigned cur_epoch;
  spin_t spinner = SPIN_INITIALIZER;
  while ((cur_epoch = atomic_load_u(&epoch, ATOMIC_ACQUIRE)) !=
      next_epoch) {
   spin_adaptive(&spinner);
  }
  assert_u_eq(cur_epoch, next_epoch, "Unexpected epoch");





  for (unsigned i = 0; i < PER_THD_NALLOCS; i++) {
   void *p = mallocx(sz, MALLOCX_ARENA(arena_ind) |
       MALLOCX_TCACHE_NONE
       );
   assert_ptr_not_null(p,
       "Unexpected mallocx() failure\n");
  }


  atomic_fetch_add_u(&nfinished, 1, ATOMIC_RELEASE);
 }

 return ((void*)0);
}
