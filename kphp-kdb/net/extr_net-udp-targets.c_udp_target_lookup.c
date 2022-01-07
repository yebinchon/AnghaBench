
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int dummy; } ;
struct process_id {int dummy; } ;


 struct udp_target* udp_target_get_by_pid (struct process_id*) ;

struct udp_target *udp_target_lookup (struct process_id *PID) {
  return udp_target_get_by_pid (PID);
}
