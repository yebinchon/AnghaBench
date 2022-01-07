
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ core_untracked_cache; } ;
struct repository {TYPE_1__ settings; } ;
struct index_state {int dummy; } ;


 scalar_t__ UNTRACKED_CACHE_REMOVE ;
 scalar_t__ UNTRACKED_CACHE_WRITE ;
 int add_untracked_cache (struct index_state*) ;
 int prepare_repo_settings (struct repository*) ;
 int remove_untracked_cache (struct index_state*) ;
 struct repository* the_repository ;

__attribute__((used)) static void tweak_untracked_cache(struct index_state *istate)
{
 struct repository *r = the_repository;

 prepare_repo_settings(r);

 if (r->settings.core_untracked_cache == UNTRACKED_CACHE_REMOVE) {
  remove_untracked_cache(istate);
  return;
 }

 if (r->settings.core_untracked_cache == UNTRACKED_CACHE_WRITE)
  add_untracked_cache(istate);
}
