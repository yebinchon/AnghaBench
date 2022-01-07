
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WITNESS_RANK_HOOK ;
 int hooks_mu ;
 int malloc_mutex_init (int *,char*,int ,int ) ;
 int malloc_mutex_rank_exclusive ;

bool
hook_boot() {
 return malloc_mutex_init(&hooks_mu, "hooks", WITNESS_RANK_HOOK,
     malloc_mutex_rank_exclusive);
}
