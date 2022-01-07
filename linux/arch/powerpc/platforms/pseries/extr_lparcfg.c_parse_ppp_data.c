
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct hvcall_ppp_data {unsigned long entitlement; unsigned long group_num; unsigned long active_system_procs; unsigned long pool_num; int active_procs_in_pool; unsigned long unallocated_weight; unsigned long weight; unsigned long capped; unsigned long unallocated_entitlement; unsigned long phys_platform_procs; unsigned long max_proc_cap_avail; unsigned long entitled_proc_cap_avail; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpup (int const*) ;
 int get_lppaca () ;
 int h_get_ppp (struct hvcall_ppp_data*) ;
 int h_pic (unsigned long*,unsigned long*) ;
 scalar_t__ lppaca_shared_proc (int ) ;
 struct device_node* of_find_node_by_path (char*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int seq_printf (struct seq_file*,char*,unsigned long) ;

__attribute__((used)) static void parse_ppp_data(struct seq_file *m)
{
 struct hvcall_ppp_data ppp_data;
 struct device_node *root;
 const __be32 *perf_level;
 int rc;

 rc = h_get_ppp(&ppp_data);
 if (rc)
  return;

 seq_printf(m, "partition_entitled_capacity=%lld\n",
            ppp_data.entitlement);
 seq_printf(m, "group=%d\n", ppp_data.group_num);
 seq_printf(m, "system_active_processors=%d\n",
            ppp_data.active_system_procs);


 if (lppaca_shared_proc(get_lppaca())) {
  unsigned long pool_idle_time, pool_procs;

  seq_printf(m, "pool=%d\n", ppp_data.pool_num);


  seq_printf(m, "pool_capacity=%d\n",
      ppp_data.active_procs_in_pool * 100);

  h_pic(&pool_idle_time, &pool_procs);
  seq_printf(m, "pool_idle_time=%ld\n", pool_idle_time);
  seq_printf(m, "pool_num_procs=%ld\n", pool_procs);
 }

 seq_printf(m, "unallocated_capacity_weight=%d\n",
     ppp_data.unallocated_weight);
 seq_printf(m, "capacity_weight=%d\n", ppp_data.weight);
 seq_printf(m, "capped=%d\n", ppp_data.capped);
 seq_printf(m, "unallocated_capacity=%lld\n",
     ppp_data.unallocated_entitlement);





 root = of_find_node_by_path("/");
 if (root) {
  perf_level = of_get_property(root,
    "ibm,partition-performance-parameters-level",
          ((void*)0));
  if (perf_level && (be32_to_cpup(perf_level) >= 1)) {
   seq_printf(m,
       "physical_procs_allocated_to_virtualization=%d\n",
       ppp_data.phys_platform_procs);
   seq_printf(m, "max_proc_capacity_available=%d\n",
       ppp_data.max_proc_cap_avail);
   seq_printf(m, "entitled_proc_capacity_available=%d\n",
       ppp_data.entitled_proc_cap_avail);
  }

  of_node_put(root);
 }
}
