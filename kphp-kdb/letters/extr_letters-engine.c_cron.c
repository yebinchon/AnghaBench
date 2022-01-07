
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_all (int ) ;
 int letter_delete_time (int,char*) ;
 int process_delayed_letters (int ,int ) ;

void cron (void) {
  letter_delete_time (60, "Time expired");

  process_delayed_letters (0, 0);

  flush_all (0);
}
