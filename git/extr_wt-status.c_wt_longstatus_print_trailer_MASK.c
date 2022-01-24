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
struct wt_status {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WT_STATUS_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct wt_status*) ; 
 int /*<<< orphan*/  FUNC1 (struct wt_status*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC2(struct wt_status *s)
{
	FUNC1(s, FUNC0(WT_STATUS_HEADER, s), "%s", "");
}