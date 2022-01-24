#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct iwdp_iport_struct {int dummy; } ;
typedef  TYPE_2__* iwdp_iport_t ;
struct TYPE_6__ {int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int /*<<< orphan*/  ws_id_to_iws; TYPE_1__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  HT_STRING_KEYS ; 
 int /*<<< orphan*/  TYPE_IPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

iwdp_iport_t FUNC4() {
  iwdp_iport_t iport = (iwdp_iport_t)FUNC2(sizeof(struct iwdp_iport_struct));
  if (!iport) {
    return NULL;
  }
  FUNC3(iport, 0, sizeof(struct iwdp_iport_struct));
  iport->type.type = TYPE_IPORT;
  iport->ws_id_to_iws = FUNC0(HT_STRING_KEYS);
  if (!iport->ws_id_to_iws) {
    FUNC1(iport);
    return NULL;
  }
  return iport;
}