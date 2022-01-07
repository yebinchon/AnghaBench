
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 unsigned int ATA_EH_ENABLE_LINK ;
 unsigned int ATA_EH_HARDRESET ;
 unsigned int ATA_EH_PARK ;
 unsigned int ATA_EH_REVALIDATE ;
 unsigned int ATA_EH_SOFTRESET ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;
 int trace_seq_putc (struct trace_seq*,char) ;

const char *
libata_trace_parse_eh_action(struct trace_seq *p, unsigned int eh_action)
{
 const char *ret = trace_seq_buffer_ptr(p);

 trace_seq_printf(p, "%x", eh_action);
 if (eh_action) {
  trace_seq_printf(p, "{ ");
  if (eh_action & ATA_EH_REVALIDATE)
   trace_seq_printf(p, "REVALIDATE ");
  if (eh_action & (ATA_EH_SOFTRESET | ATA_EH_HARDRESET))
   trace_seq_printf(p, "RESET ");
  else if (eh_action & ATA_EH_SOFTRESET)
   trace_seq_printf(p, "SOFTRESET ");
  else if (eh_action & ATA_EH_HARDRESET)
   trace_seq_printf(p, "HARDRESET ");
  if (eh_action & ATA_EH_ENABLE_LINK)
   trace_seq_printf(p, "ENABLE_LINK ");
  if (eh_action & ATA_EH_PARK)
   trace_seq_printf(p, "PARK ");
  trace_seq_putc(p, '}');
 }
 trace_seq_putc(p, 0);

 return ret;
}
