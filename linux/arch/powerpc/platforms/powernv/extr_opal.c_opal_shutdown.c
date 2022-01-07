
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long OPAL_BUSY ;
 long OPAL_BUSY_EVENT ;
 int OPAL_DUMP_REGION_LOG_BUF ;
 int OPAL_UNREGISTER_DUMP_REGION ;
 int mdelay (int) ;
 scalar_t__ opal_check_token (int ) ;
 int opal_event_shutdown () ;
 int opal_poll_events (int *) ;
 long opal_sync_host_reboot () ;
 int opal_unregister_dump_region (int ) ;

void opal_shutdown(void)
{
 long rc = OPAL_BUSY;

 opal_event_shutdown();






 while (rc == OPAL_BUSY || rc == OPAL_BUSY_EVENT) {
  rc = opal_sync_host_reboot();
  if (rc == OPAL_BUSY)
   opal_poll_events(((void*)0));
  else
   mdelay(10);
 }


 if (opal_check_token(OPAL_UNREGISTER_DUMP_REGION))
  opal_unregister_dump_region(OPAL_DUMP_REGION_LOG_BUF);
}
