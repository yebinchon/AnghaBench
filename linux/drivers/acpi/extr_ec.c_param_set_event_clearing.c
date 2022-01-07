
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int ACPI_EC_EVT_TIMING_EVENT ;
 int ACPI_EC_EVT_TIMING_QUERY ;
 int ACPI_EC_EVT_TIMING_STATUS ;
 int EINVAL ;
 int ec_event_clearing ;
 int pr_info (char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int param_set_event_clearing(const char *val,
        const struct kernel_param *kp)
{
 int result = 0;

 if (!strncmp(val, "status", sizeof("status") - 1)) {
  ec_event_clearing = ACPI_EC_EVT_TIMING_STATUS;
  pr_info("Assuming SCI_EVT clearing on EC_SC accesses\n");
 } else if (!strncmp(val, "query", sizeof("query") - 1)) {
  ec_event_clearing = ACPI_EC_EVT_TIMING_QUERY;
  pr_info("Assuming SCI_EVT clearing on QR_EC writes\n");
 } else if (!strncmp(val, "event", sizeof("event") - 1)) {
  ec_event_clearing = ACPI_EC_EVT_TIMING_EVENT;
  pr_info("Assuming SCI_EVT clearing on event reads\n");
 } else
  result = -EINVAL;
 return result;
}
