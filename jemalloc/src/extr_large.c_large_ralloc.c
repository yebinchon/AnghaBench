
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tsdn_t ;
typedef int tcache_t ;
struct TYPE_3__ {int args; scalar_t__ is_realloc; } ;
typedef TYPE_1__ hook_ralloc_args_t ;
typedef int extent_t ;
typedef int arena_t ;


 size_t SC_LARGE_MAXCLASS ;
 size_t SC_LARGE_MINCLASS ;
 int assert (int) ;
 void* extent_addr_get (int *) ;
 size_t extent_usize_get (int *) ;
 int hook_alloc_rallocx ;
 int hook_alloc_realloc ;
 int hook_dalloc_rallocx ;
 int hook_dalloc_realloc ;
 int hook_expand_rallocx ;
 int hook_expand_realloc ;
 int hook_invoke_alloc (int ,void*,uintptr_t,int ) ;
 int hook_invoke_dalloc (int ,void*,int ) ;
 int hook_invoke_expand (int ,void*,size_t,size_t,uintptr_t,int ) ;
 int * iealloc (int *,void*) ;
 int isdalloct (int *,void*,size_t,int *,int *,int) ;
 void* large_ralloc_move_helper (int *,int *,size_t,size_t,int) ;
 int large_ralloc_no_move (int *,int *,size_t,size_t,int) ;
 int memcpy (void*,void*,size_t) ;

void *
large_ralloc(tsdn_t *tsdn, arena_t *arena, void *ptr, size_t usize,
    size_t alignment, bool zero, tcache_t *tcache,
    hook_ralloc_args_t *hook_args) {
 extent_t *extent = iealloc(tsdn, ptr);

 size_t oldusize = extent_usize_get(extent);

 assert(usize > 0 && usize <= SC_LARGE_MAXCLASS);

 assert(oldusize >= SC_LARGE_MINCLASS
     && usize >= SC_LARGE_MINCLASS);


 if (!large_ralloc_no_move(tsdn, extent, usize, usize, zero)) {
  hook_invoke_expand(hook_args->is_realloc
      ? hook_expand_realloc : hook_expand_rallocx, ptr, oldusize,
      usize, (uintptr_t)ptr, hook_args->args);
  return extent_addr_get(extent);
 }






 void *ret = large_ralloc_move_helper(tsdn, arena, usize, alignment,
     zero);
 if (ret == ((void*)0)) {
  return ((void*)0);
 }

 hook_invoke_alloc(hook_args->is_realloc
     ? hook_alloc_realloc : hook_alloc_rallocx, ret, (uintptr_t)ret,
     hook_args->args);
 hook_invoke_dalloc(hook_args->is_realloc
     ? hook_dalloc_realloc : hook_dalloc_rallocx, ptr, hook_args->args);

 size_t copysize = (usize < oldusize) ? usize : oldusize;
 memcpy(ret, extent_addr_get(extent), copysize);
 isdalloct(tsdn, extent_addr_get(extent), oldusize, tcache, ((void*)0), 1);
 return ret;
}
