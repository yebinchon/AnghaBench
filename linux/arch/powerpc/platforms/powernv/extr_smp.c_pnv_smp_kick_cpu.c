
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ cpu_start; } ;


 int EINVAL ;
 int ENODEV ;
 int FW_FEATURE_OPAL ;
 long OPAL_SUCCESS ;
 scalar_t__ OPAL_THREAD_INACTIVE ;
 scalar_t__ OPAL_THREAD_STARTED ;
 unsigned long __pa (int ) ;
 int firmware_has_feature (int ) ;
 int generic_secondary_smp_init ;
 unsigned int get_hard_smp_processor_id (int) ;
 int nr_cpu_ids ;
 long opal_query_cpu_status (unsigned int,scalar_t__*) ;
 long opal_start_cpu (unsigned int,unsigned long) ;
 TYPE_1__** paca_ptrs ;
 int ppc_function_entry (int ) ;
 int pr_devel (char*,int,unsigned int,...) ;
 int pr_warn (char*,long,int) ;
 int smp_generic_kick_cpu (int) ;

__attribute__((used)) static int pnv_smp_kick_cpu(int nr)
{
 unsigned int pcpu;
 unsigned long start_here =
   __pa(ppc_function_entry(generic_secondary_smp_init));
 long rc;
 uint8_t status;

 if (nr < 0 || nr >= nr_cpu_ids)
  return -EINVAL;

 pcpu = get_hard_smp_processor_id(nr);




 if (paca_ptrs[nr]->cpu_start || !firmware_has_feature(FW_FEATURE_OPAL))
  goto kick;







 rc = opal_query_cpu_status(pcpu, &status);
 if (rc != OPAL_SUCCESS) {
  pr_warn("OPAL Error %ld querying CPU %d state\n", rc, nr);
  return -ENODEV;
 }





 if (status == OPAL_THREAD_STARTED)
  goto kick;




 if (status == OPAL_THREAD_INACTIVE) {
  pr_devel("OPAL: Starting CPU %d (HW 0x%x)...\n", nr, pcpu);
  rc = opal_start_cpu(pcpu, start_here);
  if (rc != OPAL_SUCCESS) {
   pr_warn("OPAL Error %ld starting CPU %d\n", rc, nr);
   return -ENODEV;
  }
 } else {






  pr_devel("OPAL: CPU %d (HW 0x%x) is unavailable"
    " (status %d)...\n", nr, pcpu, status);
  return -ENODEV;
 }

kick:
 return smp_generic_kick_cpu(nr);
}
