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
#define  DIFF_STATUS_ADDED 135 
#define  DIFF_STATUS_COPIED 134 
#define  DIFF_STATUS_DELETED 133 
#define  DIFF_STATUS_MODIFIED 132 
#define  DIFF_STATUS_RENAMED 131 
#define  DIFF_STATUS_TYPE_CHANGED 130 
#define  DIFF_STATUS_UNKNOWN 129 
#define  DIFF_STATUS_UNMERGED 128 
 char const* FUNC0 (char*) ; 

__attribute__((used)) static const char *FUNC1(int status)
{
	switch (status) {
	case DIFF_STATUS_ADDED:
		return FUNC0("new file:");
	case DIFF_STATUS_COPIED:
		return FUNC0("copied:");
	case DIFF_STATUS_DELETED:
		return FUNC0("deleted:");
	case DIFF_STATUS_MODIFIED:
		return FUNC0("modified:");
	case DIFF_STATUS_RENAMED:
		return FUNC0("renamed:");
	case DIFF_STATUS_TYPE_CHANGED:
		return FUNC0("typechange:");
	case DIFF_STATUS_UNKNOWN:
		return FUNC0("unknown:");
	case DIFF_STATUS_UNMERGED:
		return FUNC0("unmerged:");
	default:
		return NULL;
	}
}