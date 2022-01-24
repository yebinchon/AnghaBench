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
 int /*<<< orphan*/  test_after2_probe ; 
 int /*<<< orphan*/  test_after_probe ; 
 int /*<<< orphan*/  test_before_probe ; 
 int /*<<< orphan*/  test_case_probe ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0(&test_before_probe);
	FUNC0(&test_case_probe);
	FUNC0(&test_after_probe);
	FUNC0(&test_after2_probe);
}