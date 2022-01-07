
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WDOG_TIMEOUT_NONE ;
 scalar_t__ ipmi_watchdog_state ;
 int panic_halt_ipmi_set_timeout () ;
 int panic_wdt_timeout ;
 scalar_t__ pretimeout ;
 int timeout ;
 scalar_t__ watchdog_user ;

__attribute__((used)) static void ipmi_wdog_panic_handler(void *user_data)
{
 static int panic_event_handled;







 if (watchdog_user && !panic_event_handled &&
     ipmi_watchdog_state != WDOG_TIMEOUT_NONE) {

  panic_event_handled = 1;

  timeout = panic_wdt_timeout;
  pretimeout = 0;
  panic_halt_ipmi_set_timeout();
 }
}
