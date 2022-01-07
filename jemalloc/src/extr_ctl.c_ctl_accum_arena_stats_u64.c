
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ arena_stats_u64_t ;


 int ATOMIC_RELAXED ;
 scalar_t__ atomic_load_u64 (scalar_t__*,int ) ;
 int atomic_store_u64 (scalar_t__*,scalar_t__,int ) ;

__attribute__((used)) static void
ctl_accum_arena_stats_u64(arena_stats_u64_t *dst, arena_stats_u64_t *src) {





 *dst += *src;

}
