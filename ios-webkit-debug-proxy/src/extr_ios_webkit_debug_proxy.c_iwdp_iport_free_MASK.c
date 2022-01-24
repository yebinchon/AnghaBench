#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iwdp_iport_struct {int dummy; } ;
typedef  TYPE_1__* iwdp_iport_t ;
struct TYPE_5__ {int /*<<< orphan*/  ws_id_to_iws; struct TYPE_5__* device_name; struct TYPE_5__* device_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(iwdp_iport_t iport) {
  if (iport) {
    FUNC0(iport->device_id);
    FUNC0(iport->device_name);
    FUNC1(iport->ws_id_to_iws);
    FUNC2(iport, 0, sizeof(struct iwdp_iport_struct));
    FUNC0(iport);
  }
}