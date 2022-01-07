
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int ACPI_BUTTON_LID_INIT_IGNORE ;
 int ACPI_BUTTON_LID_INIT_METHOD ;
 int ACPI_BUTTON_LID_INIT_OPEN ;
 int EINVAL ;
 int lid_init_state ;
 int pr_info (char*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static int param_set_lid_init_state(const char *val,
        const struct kernel_param *kp)
{
 int result = 0;

 if (!strncmp(val, "open", sizeof("open") - 1)) {
  lid_init_state = ACPI_BUTTON_LID_INIT_OPEN;
  pr_info("Notify initial lid state as open\n");
 } else if (!strncmp(val, "method", sizeof("method") - 1)) {
  lid_init_state = ACPI_BUTTON_LID_INIT_METHOD;
  pr_info("Notify initial lid state with _LID return value\n");
 } else if (!strncmp(val, "ignore", sizeof("ignore") - 1)) {
  lid_init_state = ACPI_BUTTON_LID_INIT_IGNORE;
  pr_info("Do not notify initial lid state\n");
 } else
  result = -EINVAL;
 return result;
}
