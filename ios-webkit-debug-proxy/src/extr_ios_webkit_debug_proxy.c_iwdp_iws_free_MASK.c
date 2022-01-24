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
struct iwdp_iws_struct {int dummy; } ;
typedef  TYPE_1__* iwdp_iws_t ;
struct TYPE_5__ {struct TYPE_5__* ws_id; int /*<<< orphan*/  ws; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(iwdp_iws_t iws) {
  if (iws) {
    FUNC2(iws->ws);
    FUNC0(iws->ws_id);
    FUNC1(iws, 0, sizeof(struct iwdp_iws_struct));
    FUNC0(iws);
  }
}