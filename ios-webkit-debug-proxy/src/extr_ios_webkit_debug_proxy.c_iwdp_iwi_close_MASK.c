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
typedef  TYPE_2__* iwdp_iwi_t ;
typedef  TYPE_3__* iwdp_iport_t ;
typedef  scalar_t__ iwdp_ipage_t ;
typedef  int /*<<< orphan*/  ht_t ;
struct TYPE_11__ {scalar_t__ s_fd; int /*<<< orphan*/ * iwi; } ;
struct TYPE_10__ {int /*<<< orphan*/  page_num_to_ipage; TYPE_3__* iport; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* remove_fd ) (TYPE_1__*,scalar_t__) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IWDP_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 

iwdp_status FUNC7(iwdp_t self, iwdp_iwi_t iwi) {
  iwdp_iport_t iport = iwi->iport;
  if (iport) {
    FUNC5(iport);
    // clear pointer to this iwi
    if (iport->iwi) {
      iport->iwi = NULL;
    }
  }
  // free pages
  ht_t ipage_ht = iwi->page_num_to_ipage;
  iwdp_ipage_t *ipages = (iwdp_ipage_t *)FUNC2(ipage_ht);
  FUNC1(ipage_ht);
  iwdp_ipage_t *ipp;
  for (ipp = ipages; *ipp; ipp++) {
    FUNC3((iwdp_ipage_t)*ipp);
  }
  FUNC0(ipages);
  FUNC4(iwi);
  // close browser listener, which will close all clients
  if (iport && iport->s_fd > 0) {
    self->remove_fd(self, iport->s_fd);
  }
  return IWDP_SUCCESS;
}