#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* iwdp_t ;
typedef  int /*<<< orphan*/  iwdp_status ;
typedef  TYPE_2__* iwdp_iws_t ;
typedef  TYPE_3__* iwdp_iport_t ;
struct TYPE_11__ {int /*<<< orphan*/  ws_id_to_iws; } ;
struct TYPE_10__ {int ws_fd; int /*<<< orphan*/  ws_id; TYPE_3__* iport; } ;
struct TYPE_9__ {int /*<<< orphan*/  is_debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWDP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

iwdp_status FUNC3(iwdp_t self, iwdp_iport_t iport, int ws_fd,
    iwdp_iws_t *to_iws) {
  iwdp_iws_t iws = FUNC1(self->is_debug);
  iws->iport = iport;
  iws->ws_fd = ws_fd;
  FUNC2(&iws->ws_id);
  FUNC0(iport->ws_id_to_iws, iws->ws_id, iws);
  *to_iws = iws;
  return IWDP_SUCCESS;
}