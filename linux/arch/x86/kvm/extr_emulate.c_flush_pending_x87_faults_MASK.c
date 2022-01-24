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
struct x86_emulate_ctxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MF_VECTOR ; 
 int X86EMUL_CONTINUE ; 
 int FUNC0 (char*) ; 
 int FUNC1 (struct x86_emulate_ctxt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct x86_emulate_ctxt *ctxt)
{
	int rc;

	rc = FUNC0("fwait");

	if (FUNC2(rc != X86EMUL_CONTINUE))
		return FUNC1(ctxt, MF_VECTOR, 0, false);

	return X86EMUL_CONTINUE;
}