
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp_level ;
struct cpuinfo_tree {int total_nodes; struct cpuinfo_node* nodes; TYPE_1__* level; } ;
struct cpuinfo_node {int id; int level; int num_cpus; int parent_index; int child_start; int child_end; int rover; } ;
struct cpuinfo_level {int dummy; } ;
struct TYPE_2__ {int start_index; int end_index; } ;


 int CPUINFO_LVL_MAX ;
 int CPUINFO_LVL_PROC ;
 int CPUINFO_LVL_ROOT ;
 int GFP_ATOMIC ;
 scalar_t__ cpu_online (int) ;
 int cpu_online_mask ;
 int cpuinfo_id (int,int) ;
 int cpumask_first (int ) ;
 int enumerate_cpuinfo_nodes (struct cpuinfo_level*) ;
 int kfree (struct cpuinfo_tree*) ;
 struct cpuinfo_tree* kzalloc (int ,int ) ;
 int memcpy (TYPE_1__**,struct cpuinfo_level*,int) ;
 int nodes ;
 int num_possible_cpus () ;
 int struct_size (struct cpuinfo_tree*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct cpuinfo_tree *build_cpuinfo_tree(void)
{
 struct cpuinfo_tree *new_tree;
 struct cpuinfo_node *node;
 struct cpuinfo_level tmp_level[CPUINFO_LVL_MAX];
 int num_cpus[CPUINFO_LVL_MAX];
 int level_rover[CPUINFO_LVL_MAX];
 int prev_id[CPUINFO_LVL_MAX];
 int n, id, cpu, prev_cpu, last_cpu, level;

 n = enumerate_cpuinfo_nodes(tmp_level);

 new_tree = kzalloc(struct_size(new_tree, nodes, n), GFP_ATOMIC);
 if (!new_tree)
  return ((void*)0);

 new_tree->total_nodes = n;
 memcpy(&new_tree->level, tmp_level, sizeof(tmp_level));

 prev_cpu = cpu = cpumask_first(cpu_online_mask);


 for (level = CPUINFO_LVL_PROC; level >= CPUINFO_LVL_ROOT; level--) {
  n = new_tree->level[level].start_index;

  level_rover[level] = n;
  node = &new_tree->nodes[n];

  id = cpuinfo_id(cpu, level);
  if (unlikely(id < 0)) {
   kfree(new_tree);
   return ((void*)0);
  }
  node->id = id;
  node->level = level;
  node->num_cpus = 1;

  node->parent_index = (level > CPUINFO_LVL_ROOT)
      ? new_tree->level[level - 1].start_index : -1;

  node->child_start = node->child_end = node->rover =
      (level == CPUINFO_LVL_PROC)
      ? cpu : new_tree->level[level + 1].start_index;

  prev_id[level] = node->id;
  num_cpus[level] = 1;
 }

 for (last_cpu = (num_possible_cpus() - 1); last_cpu >= 0; last_cpu--) {
  if (cpu_online(last_cpu))
   break;
 }

 while (++cpu <= last_cpu) {
  if (!cpu_online(cpu))
   continue;

  for (level = CPUINFO_LVL_PROC; level >= CPUINFO_LVL_ROOT;
       level--) {
   id = cpuinfo_id(cpu, level);
   if (unlikely(id < 0)) {
    kfree(new_tree);
    return ((void*)0);
   }

   if ((id != prev_id[level]) || (cpu == last_cpu)) {
    prev_id[level] = id;
    node = &new_tree->nodes[level_rover[level]];
    node->num_cpus = num_cpus[level];
    num_cpus[level] = 1;

    if (cpu == last_cpu)
     node->num_cpus++;


    if (level == CPUINFO_LVL_ROOT)
     node->parent_index = -1;
    else
     node->parent_index =
         level_rover[level - 1];

    if (level == CPUINFO_LVL_PROC) {
     node->child_end =
         (cpu == last_cpu) ? cpu : prev_cpu;
    } else {
     node->child_end =
         level_rover[level + 1] - 1;
    }


    n = ++level_rover[level];
    if (n <= new_tree->level[level].end_index) {
     node = &new_tree->nodes[n];
     node->id = id;
     node->level = level;


     node->child_start = node->child_end =
     node->rover =
         (level == CPUINFO_LVL_PROC)
         ? cpu : level_rover[level + 1];
    }
   } else
    num_cpus[level]++;
  }
  prev_cpu = cpu;
 }

 return new_tree;
}
