
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cacheinfo {unsigned int level; int type; int coherency_line_size; int ways_of_associativity; int size; int number_of_sets; int disable_sysfs; int shared_cpu_map; } ;
typedef enum cache_type { ____Placeholder_cache_type } cache_type ;


 int CACHE_TI_INSTRUCTION ;
 int CACHE_TI_UNIFIED ;
 int CACHE_TYPE_INST ;
 int EXTRACT_ASSOCIATIVITY ;
 int EXTRACT_LINE_SIZE ;
 int EXTRACT_SIZE ;
 int cpumask_set_cpu (int,int *) ;
 void* ecag (int ,unsigned int,int) ;

__attribute__((used)) static void ci_leaf_init(struct cacheinfo *this_leaf, int private,
    enum cache_type type, unsigned int level, int cpu)
{
 int ti, num_sets;

 if (type == CACHE_TYPE_INST)
  ti = CACHE_TI_INSTRUCTION;
 else
  ti = CACHE_TI_UNIFIED;
 this_leaf->level = level + 1;
 this_leaf->type = type;
 this_leaf->coherency_line_size = ecag(EXTRACT_LINE_SIZE, level, ti);
 this_leaf->ways_of_associativity = ecag(EXTRACT_ASSOCIATIVITY, level, ti);
 this_leaf->size = ecag(EXTRACT_SIZE, level, ti);
 num_sets = this_leaf->size / this_leaf->coherency_line_size;
 num_sets /= this_leaf->ways_of_associativity;
 this_leaf->number_of_sets = num_sets;
 cpumask_set_cpu(cpu, &this_leaf->shared_cpu_map);
 if (!private)
  this_leaf->disable_sysfs = 1;
}
