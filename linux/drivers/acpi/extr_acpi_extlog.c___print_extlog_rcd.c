
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_hest_generic_status {scalar_t__ error_severity; } ;
typedef int pfx_seq ;
typedef int atomic_t ;


 scalar_t__ CPER_SEV_CORRECTED ;
 char* KERN_ERR ;
 char* KERN_INFO ;
 unsigned int atomic_inc_return (int *) ;
 int cper_estatus_print (char*,struct acpi_hest_generic_status*) ;
 int printk (char*,char*,int) ;
 int snprintf (char*,int,char*,char const*,unsigned int) ;

__attribute__((used)) static void __print_extlog_rcd(const char *pfx,
          struct acpi_hest_generic_status *estatus, int cpu)
{
 static atomic_t seqno;
 unsigned int curr_seqno;
 char pfx_seq[64];

 if (!pfx) {
  if (estatus->error_severity <= CPER_SEV_CORRECTED)
   pfx = KERN_INFO;
  else
   pfx = KERN_ERR;
 }
 curr_seqno = atomic_inc_return(&seqno);
 snprintf(pfx_seq, sizeof(pfx_seq), "%s{%u}", pfx, curr_seqno);
 printk("%s""Hardware error detected on CPU%d\n", pfx_seq, cpu);
 cper_estatus_print(pfx_seq, estatus);
}
