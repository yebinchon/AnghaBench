
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int T_QUEUE ;


 int LOG_MODULE_MAIN ;
 int bsp_init () ;
 int cfw_init (int ) ;
 int loop ;
 int pr_info (int ,char*) ;
 int xloop_init_from_queue (int *,int ) ;
 int xloop_run (int *) ;

void main (void)
{
  T_QUEUE queue = bsp_init ();

  pr_info (LOG_MODULE_MAIN, "BSP init done");

  cfw_init (queue);
  pr_info (LOG_MODULE_MAIN, "CFW init done");

  xloop_init_from_queue (&loop, queue);

  xloop_run (&loop);
}
