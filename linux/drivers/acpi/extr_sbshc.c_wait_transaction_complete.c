
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_smb_hc {int done; int wait; } ;


 int ETIME ;
 int msecs_to_jiffies (int) ;
 scalar_t__ wait_event_timeout (int ,int ,int ) ;

__attribute__((used)) static int wait_transaction_complete(struct acpi_smb_hc *hc, int timeout)
{
 if (wait_event_timeout(hc->wait, hc->done, msecs_to_jiffies(timeout)))
  return 0;
 return -ETIME;
}
