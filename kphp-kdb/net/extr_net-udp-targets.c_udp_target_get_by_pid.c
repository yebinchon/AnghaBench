
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udp_target_set {int state; int T; struct udp_target* last; struct udp_target* S; } ;
struct TYPE_2__ {int utime; int pid; } ;
struct udp_target {TYPE_1__ PID; } ;
struct process_id {int utime; int pid; } ;


 int assert (int ) ;
 int matches_pid (TYPE_1__*,struct process_id*) ;
 struct udp_target** tree_lookup_value_udp_target_by_fpid (int ,void*) ;
 struct udp_target_set** tree_lookup_value_udp_target_set (int ,void*) ;
 int udp_target_set_expand (struct udp_target_set*) ;
 int udp_target_set_tree ;

struct udp_target *udp_target_get_by_pid (struct process_id *PID) {
  struct udp_target_set **_S = tree_lookup_value_udp_target_set (udp_target_set_tree, (void *)PID);
  if (!_S) { return 0; }
  struct udp_target_set *ST = *_S;
  struct udp_target *S;
  struct udp_target **SS;
  switch (ST->state) {
  case 0:
    return 0;
  case 1:
    udp_target_set_expand (ST);
  case 2:
    S = ST->S;
    if (!PID->pid && !PID->utime) {
      return S;
    } else if (!S->PID.pid && !S->PID.utime) {
      return S;
    } else if (matches_pid (&S->PID, PID) == 2) {
      return S;
    } else {
      return 0;
    }
  case 3:
    if (!PID->pid && !PID->utime) {
      return ST->last;
    } else {
      SS = tree_lookup_value_udp_target_by_fpid (ST->T, (void *)PID);
      return SS ? *SS : 0;
    }
  default:
    assert (0);
    return 0;
  }
}
