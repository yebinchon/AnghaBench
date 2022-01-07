
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SERVER ;
 int tftp_clean_completed_connections () ;
 scalar_t__ working_mode ;

__attribute__((used)) static void cron (void) {
  if (working_mode == SERVER) {
    tftp_clean_completed_connections ();
  }
}
