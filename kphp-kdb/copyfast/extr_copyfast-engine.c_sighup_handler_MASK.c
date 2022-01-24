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
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void (*) (int const)) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2 (const int sig) {
  FUNC0(stderr, "got SIGHUP.\n");
  FUNC1(SIGHUP, sighup_handler);
}