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
struct iwdp_idl_struct {int dummy; } ;
typedef  TYPE_1__* iwdp_idl_t ;
struct TYPE_5__ {int /*<<< orphan*/  dl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3(iwdp_idl_t idl) {
  if (idl) {
    FUNC0(idl->dl);
    FUNC2(idl, 0, sizeof(struct iwdp_idl_struct));
    FUNC1(idl);
  }
}