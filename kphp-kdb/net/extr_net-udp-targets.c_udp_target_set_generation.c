
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int generation; int PID; } ;


 int udp_target_renew (struct udp_target*,int *,int) ;

void udp_target_set_generation (struct udp_target *S, int generation) {
  if (S->generation >= generation) { return; }
  udp_target_renew (S, &S->PID, generation);
}
