
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int IPMI_SET_TIMEOUT_FORCE_HB ;
 int IPMI_SET_TIMEOUT_NO_HB ;
 int WDOG_PREOP_NONE ;
 int WDOG_TIMEOUT_NONE ;
 int WDOG_TIMEOUT_RESET ;
 int action_val ;
 int ifnum_to_use ;
 int ipmi_create_user (int,int *,int *,int **) ;
 int ipmi_destroy_user (int *) ;
 int ipmi_get_version (int *,int*,scalar_t__*) ;
 int ipmi_hndlrs ;
 int ipmi_set_timeout (int ) ;
 int ipmi_version_major ;
 scalar_t__ ipmi_version_minor ;
 int ipmi_watchdog_state ;
 int ipmi_wdog_miscdev ;
 int misc_register (int *) ;
 int msleep (int) ;
 scalar_t__ nmi_handler_registered ;
 int pr_crit (char*) ;
 int pr_info (char*) ;
 int pr_warn (char*,...) ;
 int preop_val ;
 int pretimeout ;
 scalar_t__ start_now ;
 int testing_nmi ;
 int timeout ;
 int watchdog_ifnum ;
 int * watchdog_user ;

__attribute__((used)) static void ipmi_register_watchdog(int ipmi_intf)
{
 int rv = -EBUSY;

 if (watchdog_user)
  goto out;

 if ((ifnum_to_use >= 0) && (ifnum_to_use != ipmi_intf))
  goto out;

 watchdog_ifnum = ipmi_intf;

 rv = ipmi_create_user(ipmi_intf, &ipmi_hndlrs, ((void*)0), &watchdog_user);
 if (rv < 0) {
  pr_crit("Unable to register with ipmi\n");
  goto out;
 }

 rv = ipmi_get_version(watchdog_user,
         &ipmi_version_major,
         &ipmi_version_minor);
 if (rv) {
  pr_warn("Unable to get IPMI version, assuming 1.0\n");
  ipmi_version_major = 1;
  ipmi_version_minor = 0;
 }

 rv = misc_register(&ipmi_wdog_miscdev);
 if (rv < 0) {
  ipmi_destroy_user(watchdog_user);
  watchdog_user = ((void*)0);
  pr_crit("Unable to register misc device\n");
 }
 out:
 if ((start_now) && (rv == 0)) {

  start_now = 0;
  ipmi_watchdog_state = action_val;
  ipmi_set_timeout(IPMI_SET_TIMEOUT_FORCE_HB);
  pr_info("Starting now!\n");
 } else {

  ipmi_watchdog_state = WDOG_TIMEOUT_NONE;
  ipmi_set_timeout(IPMI_SET_TIMEOUT_NO_HB);
 }
}
