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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dtoa_ctx_key ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tsd_dtoa_ctx_dtor ; 
 int /*<<< orphan*/  tsd_dtoa_ctx_fini ; 

__attribute__((used)) static void FUNC4() {
  if (FUNC3(&dtoa_ctx_key, tsd_dtoa_ctx_dtor) != 0) {
    FUNC2(stderr, "error: cannot create thread specific key");
    FUNC0();
  }
  FUNC1(tsd_dtoa_ctx_fini);
}