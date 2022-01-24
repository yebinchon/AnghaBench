#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pid; struct TYPE_4__* next; } ;
typedef  TYPE_1__ transaction_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  WNOHANG ; 
 int FUNC3 (int) ; 
 TYPE_1__ child_running_list ; 
 scalar_t__ errno ; 
 int results_client_pid ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int FUNC6 (int,int*,int /*<<< orphan*/ ) ; 

int FUNC7 (void) {
  int res = 0;
  while (1) {
    int status;
    int p = FUNC6 (-1, &status, WNOHANG);
    if (p < 0) {
      if (errno == EINTR) {
        continue;
      }
      FUNC5 (4, "waitpid returns %d. %m\n", p);
      break;
    }

    if (!p) {
      FUNC5 (4, "waitpid returns %d.\n", p);
      return res;
    }

    FUNC5 (3, "waitpid returns %d.\n", p);

    if (p == results_client_pid) {
      if (FUNC1(status)) {
        FUNC5 (1, "copyexec-client terminated with exit code %d.\n", FUNC0(status));
      } else if (FUNC2(status)) {
        FUNC5 (1, "copyexec-client was killed by signal %d.\n", FUNC3(status));
      } else {
        FUNC5 (1, "copyexec-client terminated (waitpid status: 0x%x)\n", status);
      }
      continue;
    }

    transaction_t *T;
    for (T = child_running_list.next; T != &child_running_list; T = T->next) {
      if (T->pid == p) {
        FUNC5 (4, "transaction_check_child_status: call transaction_finish_execution\n");
        FUNC4 (T, 1);
        res++;
        break;
      }
    }
  }

  if (res > 0) {
    FUNC5 (3, "transaction_check_child_status: %d transaction(s) finished.\n", res);
  }
  return res;
}