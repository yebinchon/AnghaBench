
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aborted ;
 int add_fill_function (int *,int ) ;
 int fill_active_slot ;
 int fill_active_slots () ;
 int finish_all_active_slots () ;
 int is_running_queue ;
 scalar_t__ request_queue_head ;

__attribute__((used)) static void run_request_queue(void)
{





 do {
  finish_all_active_slots();



 } while (request_queue_head && !aborted);




}
