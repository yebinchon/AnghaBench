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
struct TYPE_3__ {scalar_t__ total_bytes; } ;
struct connection {scalar_t__ pending_queries; scalar_t__ generation; int /*<<< orphan*/  flags; TYPE_1__ out_p; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* rpc_alarm ) (struct connection*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  C_WANTWR ; 
 TYPE_2__* FUNC0 (struct connection*) ; 
 scalar_t__ conn_generation ; 
 int /*<<< orphan*/  FUNC1 (struct connection*) ; 

int FUNC2 (struct connection *c) {
  FUNC0(c)->rpc_alarm (c);
  if (c->out_p.total_bytes > 0) {
    c->flags |= C_WANTWR;
  }
  c->generation = ++conn_generation;
  c->pending_queries = 0;
  return 0;
}