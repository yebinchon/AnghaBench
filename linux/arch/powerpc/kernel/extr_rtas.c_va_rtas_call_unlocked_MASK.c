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
typedef  int /*<<< orphan*/  va_list ;
struct rtas_args {void** rets; void** args; void* nret; void* nargs; void* token; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtas_args*) ; 
 int /*<<< orphan*/  __u32 ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct rtas_args *args, int token, int nargs, int nret,
		      va_list list)
{
	int i;

	args->token = FUNC1(token);
	args->nargs = FUNC1(nargs);
	args->nret  = FUNC1(nret);
	args->rets  = &(args->args[nargs]);

	for (i = 0; i < nargs; ++i)
		args->args[i] = FUNC1(FUNC3(list, __u32));

	for (i = 0; i < nret; ++i)
		args->rets[i] = 0;

	FUNC2(FUNC0(args));
}