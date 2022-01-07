
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tsd_t ;
struct TYPE_9__ {int * arena; } ;
typedef TYPE_2__ tcache_t ;
typedef int arena_t ;
struct TYPE_8__ {int * ptr; } ;
struct TYPE_10__ {TYPE_1__ cur_ptr; } ;


 int TSDN_NULL ;
 int * arena_choose (int *,int *) ;
 int * arena_get (int ,int ,int) ;
 int assert (int) ;
 void* ipallocztm (int ,size_t,size_t,int,int *,int,int *) ;
 int malloc_initialized () ;
 size_t sz_sa2u (int ,size_t) ;
 int tcache_arena_associate (int ,TYPE_2__*,int *) ;
 size_t tcache_bin_stack_alignment (int ) ;
 int tcache_init (int *,TYPE_2__*,void*) ;
 TYPE_4__* tcache_small_bin_get (TYPE_2__*,int ) ;
 int total_stack_bytes ;
 TYPE_2__* tsd_tcachep_get_unsafe (int *) ;
 int tsd_tsdn (int *) ;

bool
tsd_tcache_data_init(tsd_t *tsd) {
 tcache_t *tcache = tsd_tcachep_get_unsafe(tsd);
 assert(tcache_small_bin_get(tcache, 0)->cur_ptr.ptr == ((void*)0));
 size_t alignment = tcache_bin_stack_alignment(total_stack_bytes);
 size_t size = sz_sa2u(total_stack_bytes, alignment);

 void *avail_array = ipallocztm(tsd_tsdn(tsd), size, alignment, 1,
     ((void*)0), 1, arena_get(TSDN_NULL, 0, 1));
 if (avail_array == ((void*)0)) {
  return 1;
 }

 tcache_init(tsd, tcache, avail_array);
 tcache->arena = ((void*)0);
 arena_t *arena;
 if (!malloc_initialized()) {

  arena = arena_get(tsd_tsdn(tsd), 0, 0);
  tcache_arena_associate(tsd_tsdn(tsd), tcache, arena);
 } else {
  arena = arena_choose(tsd, ((void*)0));

  if (tcache->arena == ((void*)0)) {
   tcache_arena_associate(tsd_tsdn(tsd), tcache, arena);
  }
 }
 assert(arena == tcache->arena);

 return 0;
}
