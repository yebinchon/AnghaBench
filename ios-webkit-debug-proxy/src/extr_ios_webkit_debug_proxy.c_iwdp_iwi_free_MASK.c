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
struct iwdp_iwi_struct {int dummy; } ;
typedef  TYPE_1__* iwdp_iwi_t ;
struct TYPE_5__ {int /*<<< orphan*/  page_num_to_ipage; int /*<<< orphan*/  app_id_to_true; struct TYPE_5__* connection_id; int /*<<< orphan*/  app; int /*<<< orphan*/  rpc; int /*<<< orphan*/  wi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(iwdp_iwi_t iwi) {
  if (iwi) {
    FUNC5(iwi->wi);
    FUNC3(iwi->rpc);
    FUNC4(iwi->app);
    // TODO free ht_values?
    FUNC0(iwi->connection_id);
    FUNC1(iwi->app_id_to_true);
    FUNC1(iwi->page_num_to_ipage);
    FUNC2(iwi, 0, sizeof(struct iwdp_iwi_struct));
    FUNC0(iwi);
  }
}