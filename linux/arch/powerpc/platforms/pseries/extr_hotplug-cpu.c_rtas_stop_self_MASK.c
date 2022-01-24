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
struct rtas_args {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ RTAS_UNKNOWN_SERVICE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtas_args*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ rtas_stop_self_token ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(void)
{
	static struct rtas_args args;

	FUNC2();

	FUNC0(rtas_stop_self_token == RTAS_UNKNOWN_SERVICE);

	FUNC4("cpu %u (hwid %u) Ready to die...\n",
	       FUNC6(), FUNC1());

	FUNC5(&args, rtas_stop_self_token, 0, 1, NULL);

	FUNC3("Alas, I survived.\n");
}