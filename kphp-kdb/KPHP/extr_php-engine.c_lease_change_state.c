
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lease_state_t ;


 scalar_t__ lease_ready_flag ;
 scalar_t__ lease_state ;

void lease_change_state (lease_state_t new_state) {
  if (lease_state != new_state) {
    lease_state = new_state;
    lease_ready_flag = 0;
  }
}
