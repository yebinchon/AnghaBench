
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 int check_ce_order (struct index_state*) ;
 int tweak_fsmonitor (struct index_state*) ;
 int tweak_split_index (struct index_state*) ;
 int tweak_untracked_cache (struct index_state*) ;

__attribute__((used)) static void post_read_index_from(struct index_state *istate)
{
 check_ce_order(istate);
 tweak_untracked_cache(istate);
 tweak_split_index(istate);
 tweak_fsmonitor(istate);
}
