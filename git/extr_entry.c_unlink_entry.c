
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int dummy; } ;
struct cache_entry {int name; int ce_mode; } ;


 int SUBMODULE_MOVE_HEAD_FORCE ;
 int ce_namelen (struct cache_entry const*) ;
 int check_leading_path (int ,int ) ;
 scalar_t__ remove_or_warn (int ,int ) ;
 int schedule_dir_for_removal (int ,int ) ;
 struct submodule* submodule_from_ce (struct cache_entry const*) ;
 int submodule_move_head (int ,char*,int *,int ) ;

void unlink_entry(const struct cache_entry *ce)
{
 const struct submodule *sub = submodule_from_ce(ce);
 if (sub) {

  submodule_move_head(ce->name, "HEAD", ((void*)0),
        SUBMODULE_MOVE_HEAD_FORCE);
 }
 if (!check_leading_path(ce->name, ce_namelen(ce)))
  return;
 if (remove_or_warn(ce->ce_mode, ce->name))
  return;
 schedule_dir_for_removal(ce->name, ce_namelen(ce));
}
