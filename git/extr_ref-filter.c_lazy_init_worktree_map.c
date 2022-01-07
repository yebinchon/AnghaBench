
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ worktrees; int map; } ;


 scalar_t__ get_worktrees (int ) ;
 int hashmap_init (int *,int ,int *,int ) ;
 int populate_worktree_map (int *,scalar_t__) ;
 TYPE_1__ ref_to_worktree_map ;
 int ref_to_worktree_map_cmpfnc ;

__attribute__((used)) static void lazy_init_worktree_map(void)
{
 if (ref_to_worktree_map.worktrees)
  return;

 ref_to_worktree_map.worktrees = get_worktrees(0);
 hashmap_init(&(ref_to_worktree_map.map), ref_to_worktree_map_cmpfnc, ((void*)0), 0);
 populate_worktree_map(&(ref_to_worktree_map.map), ref_to_worktree_map.worktrees);
}
