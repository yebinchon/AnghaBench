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
struct rpc_divorce {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  divorce_sent; } ;
struct TYPE_4__ {TYPE_1__ structured; } ;

/* Variables and functions */
 scalar_t__ Q ; 
 int /*<<< orphan*/  RPC_TYPE_DIVORCE ; 
 TYPE_2__* STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct rpc_divorce*,int,struct connection*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_divorce*,struct connection*) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC3 (struct connection *c) {
  if (verbosity >= 2) {
    FUNC0 (stderr, "rpc_send_divorce\n");
  }
  struct rpc_divorce *T = (struct rpc_divorce *)Q;
  if (FUNC1 (T, sizeof (struct rpc_divorce), c, RPC_TYPE_DIVORCE) < 0) {
    return -1;
  }
  STATS->structured.divorce_sent ++;
  return FUNC2 (T, c);
}