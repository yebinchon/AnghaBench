
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int dummy; } ;
struct process_id {int port; int ip; } ;


 struct udp_target* __udp_target_create (struct process_id*,int ,unsigned char*,int ,int*) ;
 int htonl (int ) ;
 int set_4in6 (unsigned char*,int ) ;

struct udp_target *udp_target_create_by_pid (struct process_id *PID, int *was_created) {
  static unsigned char ipv6[16];
  set_4in6 (ipv6, htonl (PID->ip));
  return __udp_target_create (PID, 0, ipv6, PID->port, was_created);
}
