#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct repl_client_status {int /*<<< orphan*/  handshake_id; TYPE_1__* rb; } ;
struct TYPE_2__ {int targets; struct repl_client_status** client; } ;

/* Variables and functions */
 scalar_t__ active_repl_clients ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 

int FUNC3 (struct repl_client_status *C) {
  int j;
  FUNC2 (1, "destroyed client %d\n", C->handshake_id);
  for (j = 0; j < C->rb->targets; j++) {
    if (C->rb->client[j] == C) {
      C->rb->client[j] = 0;
    }
  }
  FUNC1 (C->handshake_id, -1);
  FUNC0 (--active_repl_clients >= 0);
  return 0;
}