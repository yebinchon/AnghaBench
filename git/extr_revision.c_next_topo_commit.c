
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topo_walk_info {int indegree; int topo_queue; } ;
struct rev_info {struct topo_walk_info* topo_walk_info; } ;
struct commit {int dummy; } ;


 scalar_t__* indegree_slab_at (int *,struct commit*) ;
 struct commit* prio_queue_get (int *) ;

__attribute__((used)) static struct commit *next_topo_commit(struct rev_info *revs)
{
 struct commit *c;
 struct topo_walk_info *info = revs->topo_walk_info;


 c = prio_queue_get(&info->topo_queue);

 if (c)
  *(indegree_slab_at(&info->indegree, c)) = 0;

 return c;
}
