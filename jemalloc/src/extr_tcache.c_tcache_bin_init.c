
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t szind_t ;
struct TYPE_7__ {int lowbits; void* ptr; } ;
struct TYPE_8__ {int low_water_position; int full_position; TYPE_1__ cur_ptr; } ;
typedef TYPE_2__ cache_bin_t ;
struct TYPE_9__ {int stack_size; } ;


 int assert (int) ;
 void* cache_bin_empty_position_get (TYPE_2__*,size_t) ;
 scalar_t__ cache_bin_ncached_get (TYPE_2__*,size_t) ;
 int cassert (int) ;
 TYPE_4__* tcache_bin_info ;

__attribute__((used)) static bool
tcache_bin_init(cache_bin_t *bin, szind_t ind, uintptr_t *stack_cur) {
 cassert(sizeof(bin->cur_ptr) == sizeof(void *));





 void *full_position = (void *)*stack_cur;
 uint32_t bin_stack_size = tcache_bin_info[ind].stack_size;

 *stack_cur += bin_stack_size;
 void *empty_position = (void *)*stack_cur;


 bin->cur_ptr.ptr = empty_position;
 bin->low_water_position = bin->cur_ptr.lowbits;
 bin->full_position = (uint32_t)(uintptr_t)full_position;
 assert(bin->cur_ptr.lowbits - bin->full_position == bin_stack_size);
 assert(cache_bin_ncached_get(bin, ind) == 0);
 assert(cache_bin_empty_position_get(bin, ind) == empty_position);

 return 0;
}
