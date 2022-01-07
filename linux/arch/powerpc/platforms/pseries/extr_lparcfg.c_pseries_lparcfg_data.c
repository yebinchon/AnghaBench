
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int processorCount; } ;


 int FW_FEATURE_SPLPAR ;
 int be32_to_cpup (int const*) ;
 scalar_t__ firmware_has_feature (int ) ;
 int get_lppaca () ;
 int get_purr () ;
 int lparcfg_count_active_processors () ;
 int lppaca_shared_proc (int ) ;
 int maxmem_data (struct seq_file*) ;
 int mftb () ;
 int mmu_slb_size ;
 struct device_node* of_find_node_by_path (char*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int parse_em_data (struct seq_file*) ;
 int parse_mpp_data (struct seq_file*) ;
 int parse_mpp_x_data (struct seq_file*) ;
 int parse_ppp_data (struct seq_file*) ;
 int parse_system_parameter_string (struct seq_file*) ;
 int pseries_cmo_data (struct seq_file*) ;
 int seq_printf (struct seq_file*,char*,int) ;
 int splpar_dispatch_data (struct seq_file*) ;
 TYPE_1__* vdso_data ;

__attribute__((used)) static int pseries_lparcfg_data(struct seq_file *m, void *v)
{
 int partition_potential_processors;
 int partition_active_processors;
 struct device_node *rtas_node;
 const __be32 *lrdrp = ((void*)0);

 rtas_node = of_find_node_by_path("/rtas");
 if (rtas_node)
  lrdrp = of_get_property(rtas_node, "ibm,lrdr-capacity", ((void*)0));

 if (lrdrp == ((void*)0)) {
  partition_potential_processors = vdso_data->processorCount;
 } else {
  partition_potential_processors = be32_to_cpup(lrdrp + 4);
 }
 of_node_put(rtas_node);

 partition_active_processors = lparcfg_count_active_processors();

 if (firmware_has_feature(FW_FEATURE_SPLPAR)) {

  parse_system_parameter_string(m);
  parse_ppp_data(m);
  parse_mpp_data(m);
  parse_mpp_x_data(m);
  pseries_cmo_data(m);
  splpar_dispatch_data(m);

  seq_printf(m, "purr=%ld\n", get_purr());
  seq_printf(m, "tbr=%ld\n", mftb());
 } else {

  seq_printf(m, "system_active_processors=%d\n",
      partition_potential_processors);

  seq_printf(m, "system_potential_processors=%d\n",
      partition_potential_processors);

  seq_printf(m, "partition_max_entitled_capacity=%d\n",
      partition_potential_processors * 100);

  seq_printf(m, "partition_entitled_capacity=%d\n",
      partition_active_processors * 100);
 }

 seq_printf(m, "partition_active_processors=%d\n",
     partition_active_processors);

 seq_printf(m, "partition_potential_processors=%d\n",
     partition_potential_processors);

 seq_printf(m, "shared_processor_mode=%d\n",
     lppaca_shared_proc(get_lppaca()));




 parse_em_data(m);
 maxmem_data(m);

 return 0;
}
