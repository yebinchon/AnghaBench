#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* rpc_t ;
typedef  int /*<<< orphan*/  rpc_status ;
typedef  TYPE_2__* iwdp_iwi_t ;
typedef  int /*<<< orphan*/  ht_t ;
struct TYPE_6__ {int /*<<< orphan*/  connection_id; int /*<<< orphan*/  app_id_to_true; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* send_forwardGetListing ) (TYPE_1__*,int /*<<< orphan*/ ,char const*) ;int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RPC_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 

rpc_status FUNC5(rpc_t rpc, const char *app_id) {
  iwdp_iwi_t iwi = (iwdp_iwi_t)rpc->state;
  ht_t app_id_ht = iwi->app_id_to_true;
  if (FUNC1(app_id_ht, app_id)) {
    return RPC_SUCCESS;
  }
  FUNC2(app_id_ht, FUNC3(app_id), FUNC0(1));
  return rpc->send_forwardGetListing(rpc, iwi->connection_id, app_id);
}