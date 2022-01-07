
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cpuinfo_x86 {unsigned int cpu_index; int cpuid_level; int apicid; int x86; unsigned int phys_proc_id; unsigned int x86_cache_size; } ;
struct TYPE_4__ {int level; int num_threads_sharing; int type; } ;
struct TYPE_5__ {TYPE_1__ split; } ;
struct _cpuid4_info_regs {int size; TYPE_2__ eax; } ;
struct TYPE_6__ {unsigned char descriptor; int cache_type; unsigned int size; } ;


 unsigned int BAD_APICID ;
 int CTYPE_DATA ;
 int CTYPE_INST ;





 TYPE_3__* cache_table ;
 int cpu_detect_cache_sizes (struct cpuinfo_x86*) ;
 int cpu_llc_id ;
 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int cpuid4_cache_lookup_regs (unsigned int,struct _cpuid4_info_regs*) ;
 int cpuid_eax (int) ;
 unsigned int find_num_cache_leaves (struct cpuinfo_x86*) ;
 unsigned int get_count_order (unsigned int) ;
 unsigned int num_cache_leaves ;
 unsigned int per_cpu (int ,unsigned int) ;

void init_intel_cacheinfo(struct cpuinfo_x86 *c)
{

 unsigned int trace = 0, l1i = 0, l1d = 0, l2 = 0, l3 = 0;
 unsigned int new_l1d = 0, new_l1i = 0;
 unsigned int new_l2 = 0, new_l3 = 0, i;
 unsigned int l2_id = 0, l3_id = 0, num_threads_sharing, index_msb;




 if (c->cpuid_level > 3) {
  static int is_initialized;

  if (is_initialized == 0) {

   num_cache_leaves = find_num_cache_leaves(c);
   is_initialized++;
  }





  for (i = 0; i < num_cache_leaves; i++) {
   struct _cpuid4_info_regs this_leaf = {};
   int retval;

   retval = cpuid4_cache_lookup_regs(i, &this_leaf);
   if (retval < 0)
    continue;

   switch (this_leaf.eax.split.level) {
   case 1:
    if (this_leaf.eax.split.type == CTYPE_DATA)
     new_l1d = this_leaf.size/1024;
    else if (this_leaf.eax.split.type == CTYPE_INST)
     new_l1i = this_leaf.size/1024;
    break;
   case 2:
    new_l2 = this_leaf.size/1024;
    num_threads_sharing = 1 + this_leaf.eax.split.num_threads_sharing;
    index_msb = get_count_order(num_threads_sharing);
    l2_id = c->apicid & ~((1 << index_msb) - 1);
    break;
   case 3:
    new_l3 = this_leaf.size/1024;
    num_threads_sharing = 1 + this_leaf.eax.split.num_threads_sharing;
    index_msb = get_count_order(num_threads_sharing);
    l3_id = c->apicid & ~((1 << index_msb) - 1);
    break;
   default:
    break;
   }
  }
 }




 if ((num_cache_leaves == 0 || c->x86 == 15) && c->cpuid_level > 1) {

  int j, n;
  unsigned int regs[4];
  unsigned char *dp = (unsigned char *)regs;
  int only_trace = 0;

  if (num_cache_leaves != 0 && c->x86 == 15)
   only_trace = 1;


  n = cpuid_eax(2) & 0xFF;

  for (i = 0 ; i < n ; i++) {
   cpuid(2, &regs[0], &regs[1], &regs[2], &regs[3]);


   for (j = 0 ; j < 3 ; j++)
    if (regs[j] & (1 << 31))
     regs[j] = 0;


   for (j = 1 ; j < 16 ; j++) {
    unsigned char des = dp[j];
    unsigned char k = 0;


    while (cache_table[k].descriptor != 0) {
     if (cache_table[k].descriptor == des) {
      if (only_trace && cache_table[k].cache_type != 128)
       break;
      switch (cache_table[k].cache_type) {
      case 131:
       l1i += cache_table[k].size;
       break;
      case 132:
       l1d += cache_table[k].size;
       break;
      case 130:
       l2 += cache_table[k].size;
       break;
      case 129:
       l3 += cache_table[k].size;
       break;
      case 128:
       trace += cache_table[k].size;
       break;
      }

      break;
     }

     k++;
    }
   }
  }
 }

 if (new_l1d)
  l1d = new_l1d;

 if (new_l1i)
  l1i = new_l1i;

 if (new_l2) {
  l2 = new_l2;



 }

 if (new_l3) {
  l3 = new_l3;



 }
 c->x86_cache_size = l3 ? l3 : (l2 ? l2 : (l1i+l1d));

 if (!l2)
  cpu_detect_cache_sizes(c);
}
