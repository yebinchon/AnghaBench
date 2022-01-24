#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct udp_target_set {int state; int T_count; struct udp_target* last; struct udp_target* S; int /*<<< orphan*/  T; int /*<<< orphan*/  pid; int /*<<< orphan*/  utime; } ;
struct TYPE_3__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  utime; } ;
struct udp_target {TYPE_1__ PID; } ;
struct process_id {int /*<<< orphan*/  pid; int /*<<< orphan*/  utime; } ;
struct TYPE_4__ {struct udp_target* x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct udp_target*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct udp_target** FUNC4 (int /*<<< orphan*/ ,void*) ; 
 struct udp_target_set** FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct udp_target*) ; 
 int /*<<< orphan*/  udp_target_set_tree ; 

void FUNC7 (struct process_id *pid) {
  struct udp_target_set **_S = FUNC5 (udp_target_set_tree, (void *)pid);
  if (!_S) { return; }
  struct udp_target_set *ST = *_S;
  switch (ST->state) {
  case 0:
    return;
  case 1:
    if (ST->utime == pid->utime && ST->pid == pid->pid) {
      ST->state = 0;
    }
    return;
  case 2:
    if (ST->S->PID.utime == pid->utime && ST->S->PID.pid == pid->pid) {
      FUNC6 (ST->S);
      ST->state = 0;
    }
    return;
  case 3:
    {
      int ok = ST->last->PID.utime != pid->utime || ST->last->PID.pid != pid->pid;

      struct udp_target **_S = FUNC4 (ST->T, (void *)pid);
      if (_S) {
        struct udp_target *S = *_S;

        FUNC0 (ST->T_count >= 2);
        ST->T = FUNC2 (ST->T, S);
        ST->T_count --;
        FUNC6 (S);
        
        S = FUNC3 (ST->T)->x;

        if (ST->T_count == 1) {
          FUNC1 (ST->T);
          ST->state = 2;
          ST->S = S;
        } else {
          if (!ok) { 
            ST->last = S;
          }
        }
      }
      return;
    }
  default:
    FUNC0 (0);
    return;
    
  }

}