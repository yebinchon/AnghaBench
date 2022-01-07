
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct OpalHMIEvent {scalar_t__ version; int severity; scalar_t__ disposition; size_t type; int tfmr; int hmer; } ;


 size_t ARRAY_SIZE (char const**) ;
 char* KERN_ERR ;
 char* KERN_INFO ;
 char* KERN_WARNING ;
 scalar_t__ OpalHMIEvt_V1 ;
 scalar_t__ OpalHMIEvt_V2 ;
 scalar_t__ OpalHMI_DISPOSITION_RECOVERED ;
 size_t OpalHMI_ERROR_MALFUNC_ALERT ;
 size_t OpalHMI_ERROR_TFAC ;
 size_t OpalHMI_ERROR_TFMR_PARITY ;




 char const* be64_to_cpu (int ) ;
 int pr_err (char*,scalar_t__) ;
 int print_checkstop_reason (char const*,struct OpalHMIEvent*) ;
 int printk (char*,char const*,char const*,...) ;

__attribute__((used)) static void print_hmi_event_info(struct OpalHMIEvent *hmi_evt)
{
 const char *level, *sevstr, *error_info;
 static const char *hmi_error_types[] = {
  "Malfunction Alert",
  "Processor Recovery done",
  "Processor recovery occurred again",
  "Processor recovery occurred for masked error",
  "Timer facility experienced an error",
  "TFMR SPR is corrupted",
  "UPS (Uninterrupted Power System) Overflow indication",
  "An XSCOM operation failure",
  "An XSCOM operation completed",
  "SCOM has set a reserved FIR bit to cause recovery",
  "Debug trigger has set a reserved FIR bit to cause recovery",
  "A hypervisor resource error occurred",
  "CAPP recovery process is in progress",
 };


 if (hmi_evt->version < OpalHMIEvt_V1) {
  pr_err("HMI Interrupt, Unknown event version %d !\n",
   hmi_evt->version);
  return;
 }
 switch (hmi_evt->severity) {
 case 129:
  level = KERN_INFO;
  sevstr = "Harmless";
  break;
 case 128:
  level = KERN_WARNING;
  sevstr = "";
  break;
 case 131:
  level = KERN_ERR;
  sevstr = "Severe";
  break;
 case 130:
 default:
  level = KERN_ERR;
  sevstr = "Fatal";
  break;
 }

 printk("%s%s Hypervisor Maintenance interrupt [%s]\n",
  level, sevstr,
  hmi_evt->disposition == OpalHMI_DISPOSITION_RECOVERED ?
  "Recovered" : "Not recovered");
 error_info = hmi_evt->type < ARRAY_SIZE(hmi_error_types) ?
   hmi_error_types[hmi_evt->type]
   : "Unknown";
 printk("%s Error detail: %s\n", level, error_info);
 printk("%s	HMER: %016llx\n", level, be64_to_cpu(hmi_evt->hmer));
 if ((hmi_evt->type == OpalHMI_ERROR_TFAC) ||
  (hmi_evt->type == OpalHMI_ERROR_TFMR_PARITY))
  printk("%s	TFMR: %016llx\n", level,
      be64_to_cpu(hmi_evt->tfmr));

 if (hmi_evt->version < OpalHMIEvt_V2)
  return;


 if (hmi_evt->type == OpalHMI_ERROR_MALFUNC_ALERT)
  print_checkstop_reason(level, hmi_evt);
}
