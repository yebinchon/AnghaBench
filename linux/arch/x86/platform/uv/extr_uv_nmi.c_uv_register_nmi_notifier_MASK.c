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
 int /*<<< orphan*/  NMI_LOCAL ; 
 int /*<<< orphan*/  NMI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uv_handle_nmi ; 
 int /*<<< orphan*/  uv_handle_nmi_ping ; 

__attribute__((used)) static void FUNC2(void)
{
	if (FUNC1(NMI_UNKNOWN, uv_handle_nmi, 0, "uv"))
		FUNC0("UV: NMI handler failed to register\n");

	if (FUNC1(NMI_LOCAL, uv_handle_nmi_ping, 0, "uvping"))
		FUNC0("UV: PING NMI handler failed to register\n");
}