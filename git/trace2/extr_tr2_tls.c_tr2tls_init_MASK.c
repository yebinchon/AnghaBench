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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tr2tls_key ; 
 int /*<<< orphan*/  tr2tls_mutex ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  tr2tls_thread_main ; 
 int /*<<< orphan*/  tr2tls_us_start_process ; 

void FUNC4(void)
{
	FUNC3();

	FUNC1(&tr2tls_key, NULL);
	FUNC0(&tr2tls_mutex);

	tr2tls_thread_main =
		FUNC2("main", tr2tls_us_start_process);
}