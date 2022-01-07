
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {scalar_t__ reset; } ;
struct submodule {int dummy; } ;
struct cache_entry {int name; } ;


 int ERROR_WOULD_LOSE_SUBMODULE ;
 unsigned int SUBMODULE_MOVE_HEAD_DRY_RUN ;
 unsigned int SUBMODULE_MOVE_HEAD_FORCE ;
 int add_rejected_path (struct unpack_trees_options*,int ,int ) ;
 struct submodule* submodule_from_ce (struct cache_entry const*) ;
 scalar_t__ submodule_move_head (int ,char const*,char const*,unsigned int) ;

__attribute__((used)) static int check_submodule_move_head(const struct cache_entry *ce,
         const char *old_id,
         const char *new_id,
         struct unpack_trees_options *o)
{
 unsigned flags = SUBMODULE_MOVE_HEAD_DRY_RUN;
 const struct submodule *sub = submodule_from_ce(ce);

 if (!sub)
  return 0;

 if (o->reset)
  flags |= SUBMODULE_MOVE_HEAD_FORCE;

 if (submodule_move_head(ce->name, old_id, new_id, flags))
  return add_rejected_path(o, ERROR_WOULD_LOSE_SUBMODULE, ce->name);
 return 0;
}
