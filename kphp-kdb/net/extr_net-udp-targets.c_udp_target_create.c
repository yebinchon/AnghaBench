
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int dummy; } ;
struct process_id {int dummy; } ;


 struct udp_target* __udp_target_create (struct process_id*,int ,unsigned char*,int,int*) ;

struct udp_target *udp_target_create (struct process_id *PID, unsigned char ipv6[16], int port, int *was_created) {
  return __udp_target_create (PID, 0, ipv6, port, was_created);
}
