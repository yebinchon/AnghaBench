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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t*,size_t*) ; 
 int /*<<< orphan*/  expected_fsyncs_compress ; 
 int /*<<< orphan*/  expected_fsyncs_create ; 
 int /*<<< orphan*/  g_repo ; 

void FUNC3(void)
{
	size_t create_count, compress_count;

	FUNC1(g_repo, "core.fsyncObjectFiles", true);

	FUNC2(&create_count, &compress_count);

	FUNC0(expected_fsyncs_create, create_count);
	FUNC0(expected_fsyncs_compress, compress_count);
}