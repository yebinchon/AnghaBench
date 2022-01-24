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
struct connection {int /*<<< orphan*/  last_query_sent_time; } ;
typedef  int /*<<< orphan*/  command_t ;
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/ * data; int /*<<< orphan*/  extra; } ;
typedef  TYPE_1__ command_net_write_t ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_INVOKE_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  precise_now ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__) ; 

void FUNC4 (command_t *base_command, void *data) {
  command_net_write_t *command = (command_net_write_t *)base_command;
  //fprintf (stderr, "command_net_write [ptr=%p] [len = %d]\n", base_command, command->len);

  FUNC0 (command->data != NULL);
  struct connection *d = (struct connection *)data;
  //assert (d->status == conn_ready);

  FUNC3 (d, RPC_INVOKE_REQ, command->extra, (int *)command->data, command->len);

  FUNC1 (d);
  d->last_query_sent_time = precise_now;

  FUNC2 (command->data);
  command->data = NULL;
  command->len = 0;
}