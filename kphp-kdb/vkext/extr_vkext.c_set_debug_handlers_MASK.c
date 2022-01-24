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
 int /*<<< orphan*/  SIGABRT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  sigabrt_debug_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sigsegv_debug_handler ; 

void FUNC1 (void) {
  FUNC0 (SIGSEGV, sigsegv_debug_handler);
  FUNC0 (SIGABRT, sigabrt_debug_handler);
}