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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ CL_handle ; 
 scalar_t__ MAX_VIDEO_HANDLES ; 

void FUNC1 (void) {
	if (CL_handle >= 0 && CL_handle < MAX_VIDEO_HANDLES) {
		FUNC0(CL_handle);
	}
}