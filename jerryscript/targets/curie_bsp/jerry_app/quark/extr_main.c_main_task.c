
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OS_ERR_TYPE ;


 int E_OS_OK ;
 int WDT_MAX_TIMEOUT_MS ;
 int bsp_init () ;
 int cfw_init (int ) ;
 int jerry_start () ;
 int queue ;
 int queue_process_message_wait (int ,int,int *) ;
 int wdt_keepalive () ;
 int wdt_start (int ) ;

void main_task (void *param)
{

  queue = bsp_init ();

  wdt_start (WDT_MAX_TIMEOUT_MS);

  cfw_init (queue);
  jerry_start ();

  while (1)
  {
    OS_ERR_TYPE err = E_OS_OK;

    queue_process_message_wait (queue, 5000, &err);

    wdt_keepalive ();
  }
}
