
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_12__ {size_t link_error_type; scalar_t__ effective_address; int effective_address_provided; } ;
struct TYPE_18__ {size_t ra_error_type; scalar_t__ effective_address; int effective_address_provided; } ;
struct TYPE_17__ {size_t user_error_type; scalar_t__ effective_address; int effective_address_provided; } ;
struct TYPE_16__ {size_t tlb_error_type; scalar_t__ effective_address; int effective_address_provided; } ;
struct TYPE_15__ {size_t erat_error_type; scalar_t__ effective_address; int effective_address_provided; } ;
struct TYPE_14__ {size_t slb_error_type; scalar_t__ effective_address; int effective_address_provided; } ;
struct TYPE_13__ {size_t ue_error_type; scalar_t__ physical_address; int physical_address_provided; scalar_t__ effective_address; int effective_address_provided; } ;
struct TYPE_19__ {TYPE_1__ link_error; TYPE_7__ ra_error; TYPE_6__ user_error; TYPE_5__ tlb_error; TYPE_4__ erat_error; TYPE_3__ slb_error; TYPE_2__ ue_error; } ;
struct machine_check_event {scalar_t__ version; int severity; int initiator; int error_type; scalar_t__ disposition; size_t error_class; int cpu; scalar_t__ srr0; TYPE_8__ u; } ;
struct TYPE_20__ {int mce_faulty_slbs; } ;
struct TYPE_11__ {int comm; int pid; } ;


 size_t ARRAY_SIZE (char const**) ;
 char* KERN_ERR ;
 char* KERN_INFO ;
 char* KERN_WARNING ;
 scalar_t__ MCE_DISPOSITION_RECOVERED ;
 scalar_t__ MCE_V1 ;
 TYPE_10__* current ;
 TYPE_9__* local_paca ;
 int pr_err (char*,scalar_t__) ;
 int printk (char*,char const*,int ,char const*,...) ;
 int slb_dump_contents (int ) ;
 int sprintf (char*,char*,scalar_t__) ;

void machine_check_print_event_info(struct machine_check_event *evt,
        bool user_mode, bool in_guest)
{
 const char *level, *sevstr, *subtype, *err_type, *initiator;
 uint64_t ea = 0, pa = 0;
 int n = 0;
 char dar_str[50];
 char pa_str[50];
 static const char *mc_ue_types[] = {
  "Indeterminate",
  "Instruction fetch",
  "Page table walk ifetch",
  "Load/Store",
  "Page table walk Load/Store",
 };
 static const char *mc_slb_types[] = {
  "Indeterminate",
  "Parity",
  "Multihit",
 };
 static const char *mc_erat_types[] = {
  "Indeterminate",
  "Parity",
  "Multihit",
 };
 static const char *mc_tlb_types[] = {
  "Indeterminate",
  "Parity",
  "Multihit",
 };
 static const char *mc_user_types[] = {
  "Indeterminate",
  "tlbie(l) invalid",
 };
 static const char *mc_ra_types[] = {
  "Indeterminate",
  "Instruction fetch (bad)",
  "Instruction fetch (foreign)",
  "Page table walk ifetch (bad)",
  "Page table walk ifetch (foreign)",
  "Load (bad)",
  "Store (bad)",
  "Page table walk Load/Store (bad)",
  "Page table walk Load/Store (foreign)",
  "Load/Store (foreign)",
 };
 static const char *mc_link_types[] = {
  "Indeterminate",
  "Instruction fetch (timeout)",
  "Page table walk ifetch (timeout)",
  "Load (timeout)",
  "Store (timeout)",
  "Page table walk Load/Store (timeout)",
 };
 static const char *mc_error_class[] = {
  "Unknown",
  "Hardware error",
  "Probable Hardware error (some chance of software cause)",
  "Software error",
  "Probable Software error (some chance of hardware cause)",
 };


 if (evt->version != MCE_V1) {
  pr_err("Machine Check Exception, Unknown event version %d !\n",
         evt->version);
  return;
 }
 switch (evt->severity) {
 case 130:
  level = KERN_INFO;
  sevstr = "Harmless";
  break;
 case 128:
  level = KERN_WARNING;
  sevstr = "Warning";
  break;
 case 129:
  level = KERN_ERR;
  sevstr = "Severe";
  break;
 case 131:
 default:
  level = KERN_ERR;
  sevstr = "Fatal";
  break;
 }

 switch(evt->initiator) {
 case 137:
  initiator = "CPU";
  break;
 case 134:
  initiator = "PCI";
  break;
 case 136:
  initiator = "ISA";
  break;
 case 135:
  initiator = "Memory";
  break;
 case 133:
  initiator = "Power Management";
  break;
 case 132:
 default:
  initiator = "Unknown";
  break;
 }

 switch (evt->error_type) {
 case 140:
  err_type = "UE";
  subtype = evt->u.ue_error.ue_error_type <
   ARRAY_SIZE(mc_ue_types) ?
   mc_ue_types[evt->u.ue_error.ue_error_type]
   : "Unknown";
  if (evt->u.ue_error.effective_address_provided)
   ea = evt->u.ue_error.effective_address;
  if (evt->u.ue_error.physical_address_provided)
   pa = evt->u.ue_error.physical_address;
  break;
 case 142:
  err_type = "SLB";
  subtype = evt->u.slb_error.slb_error_type <
   ARRAY_SIZE(mc_slb_types) ?
   mc_slb_types[evt->u.slb_error.slb_error_type]
   : "Unknown";
  if (evt->u.slb_error.effective_address_provided)
   ea = evt->u.slb_error.effective_address;
  break;
 case 146:
  err_type = "ERAT";
  subtype = evt->u.erat_error.erat_error_type <
   ARRAY_SIZE(mc_erat_types) ?
   mc_erat_types[evt->u.erat_error.erat_error_type]
   : "Unknown";
  if (evt->u.erat_error.effective_address_provided)
   ea = evt->u.erat_error.effective_address;
  break;
 case 141:
  err_type = "TLB";
  subtype = evt->u.tlb_error.tlb_error_type <
   ARRAY_SIZE(mc_tlb_types) ?
   mc_tlb_types[evt->u.tlb_error.tlb_error_type]
   : "Unknown";
  if (evt->u.tlb_error.effective_address_provided)
   ea = evt->u.tlb_error.effective_address;
  break;
 case 138:
  err_type = "User";
  subtype = evt->u.user_error.user_error_type <
   ARRAY_SIZE(mc_user_types) ?
   mc_user_types[evt->u.user_error.user_error_type]
   : "Unknown";
  if (evt->u.user_error.effective_address_provided)
   ea = evt->u.user_error.effective_address;
  break;
 case 143:
  err_type = "Real address";
  subtype = evt->u.ra_error.ra_error_type <
   ARRAY_SIZE(mc_ra_types) ?
   mc_ra_types[evt->u.ra_error.ra_error_type]
   : "Unknown";
  if (evt->u.ra_error.effective_address_provided)
   ea = evt->u.ra_error.effective_address;
  break;
 case 144:
  err_type = "Link";
  subtype = evt->u.link_error.link_error_type <
   ARRAY_SIZE(mc_link_types) ?
   mc_link_types[evt->u.link_error.link_error_type]
   : "Unknown";
  if (evt->u.link_error.effective_address_provided)
   ea = evt->u.link_error.effective_address;
  break;
 case 147:
  err_type = "D-Cache";
  subtype = "Unknown";
  break;
 case 145:
  err_type = "I-Cache";
  subtype = "Unknown";
  break;
 default:
 case 139:
  err_type = "Unknown";
  subtype = "";
  break;
 }

 dar_str[0] = pa_str[0] = '\0';
 if (ea && evt->srr0 != ea) {

  n = sprintf(dar_str, "DAR: %016llx ", ea);
  if (pa)
   sprintf(dar_str + n, "paddr: %016llx ", pa);
 } else if (pa) {
  sprintf(pa_str, " paddr: %016llx", pa);
 }

 printk("%sMCE: CPU%d: machine check (%s) %s %s %s %s[%s]\n",
  level, evt->cpu, sevstr, in_guest ? "Guest" : "Host",
  err_type, subtype, dar_str,
  evt->disposition == MCE_DISPOSITION_RECOVERED ?
  "Recovered" : "Not recovered");

 if (in_guest || user_mode) {
  printk("%sMCE: CPU%d: PID: %d Comm: %s %sNIP: [%016llx]%s\n",
   level, evt->cpu, current->pid, current->comm,
   in_guest ? "Guest " : "", evt->srr0, pa_str);
 } else {
  printk("%sMCE: CPU%d: NIP: [%016llx] %pS%s\n",
   level, evt->cpu, evt->srr0, (void *)evt->srr0, pa_str);
 }

 printk("%sMCE: CPU%d: Initiator %s\n", level, evt->cpu, initiator);

 subtype = evt->error_class < ARRAY_SIZE(mc_error_class) ?
  mc_error_class[evt->error_class] : "Unknown";
 printk("%sMCE: CPU%d: %s\n", level, evt->cpu, subtype);






}
