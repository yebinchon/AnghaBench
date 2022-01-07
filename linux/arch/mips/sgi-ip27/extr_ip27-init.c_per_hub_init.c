
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hub_data {int h_cpus; } ;
typedef int nasid_t ;
typedef scalar_t__ cnodeid_t ;


 scalar_t__ CKSEG0 ;
 int COMPACT_TO_NASID_NODEID (scalar_t__) ;
 int IIO_ICTO ;
 int IIO_ICTP ;
 int REMOTE_HUB_S (int ,int ,int) ;
 int __flush_cache_all () ;
 int cpumask_set_cpu (int ,int *) ;
 scalar_t__ get_compact_nodeid () ;
 struct hub_data* hub_data (scalar_t__) ;
 int hub_init_mask ;
 int hub_rtc_init (scalar_t__) ;
 int memcpy (void*,char*,int) ;
 int smp_processor_id () ;
 scalar_t__ test_and_set_bit (scalar_t__,int ) ;

__attribute__((used)) static void per_hub_init(cnodeid_t cnode)
{
 struct hub_data *hub = hub_data(cnode);
 nasid_t nasid = COMPACT_TO_NASID_NODEID(cnode);

 cpumask_set_cpu(smp_processor_id(), &hub->h_cpus);

 if (test_and_set_bit(cnode, hub_init_mask))
  return;



 REMOTE_HUB_S(nasid, IIO_ICTP, 0x800);
 REMOTE_HUB_S(nasid, IIO_ICTO, 0xff);

 hub_rtc_init(cnode);
}
