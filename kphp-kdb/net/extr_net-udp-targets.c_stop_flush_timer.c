
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int flush_timer; } ;


 int remove_event_timer (int *) ;

void stop_flush_timer (struct udp_target *S) {
  remove_event_timer (&S->flush_timer);
}
