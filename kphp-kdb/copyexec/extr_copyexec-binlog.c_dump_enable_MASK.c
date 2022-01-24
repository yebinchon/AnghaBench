#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_copyexec_result_enable {scalar_t__ type; int /*<<< orphan*/  random_tag; } ;

/* Variables and functions */
 scalar_t__ LEV_COPYEXEC_RESULT_ENABLE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  out ; 

__attribute__((used)) static void FUNC2 (struct lev_copyexec_result_enable *E) {
  if (FUNC0 (E->type == LEV_COPYEXEC_RESULT_ENABLE ? "LEV_COPYEXEC_RESULT_ENABLE": "LEV_COPYEXEC_RESULT_DISABLE") ) {
    return;
  }
  FUNC1 (out, "0x%x\n", E->random_tag);
}