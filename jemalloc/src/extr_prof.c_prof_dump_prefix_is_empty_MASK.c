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
typedef  int /*<<< orphan*/  tsdn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_dump_filename_mtx ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(tsdn_t *tsdn) {
	FUNC0(tsdn, &prof_dump_filename_mtx);
	bool ret = (FUNC2(tsdn)[0] == '\0');
	FUNC1(tsdn, &prof_dump_filename_mtx);
	return ret;
}