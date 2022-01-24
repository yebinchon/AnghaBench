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
struct connection {scalar_t__ status; int flags; TYPE_2__* ev; TYPE_1__* type; int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* close ) (struct connection*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int C_SPECIAL ; 
 int /*<<< orphan*/  active_connections ; 
 int /*<<< orphan*/  FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 
 scalar_t__ conn_connecting ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  total_connect_failures ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 

int FUNC5 (struct connection *c) {
  FUNC4 (1, "socket %d: forced closing\n", c->fd);
  if (c->status != conn_connecting) {
    active_connections--;
    if (c->flags & C_SPECIAL) {
      FUNC1 (c);
    }
  } else {
    total_connect_failures++;
  }
  c->type->close (c, 0);
  FUNC0 (c);

  if (c->ev) {
    c->ev->data = 0;
  }
  FUNC2 (c, 0, sizeof(struct connection));

  return 1;
}