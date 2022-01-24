#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int vector; int error_code_valid; int /*<<< orphan*/  error_code; } ;
struct x86_emulate_ctxt {TYPE_1__ exception; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int X86EMUL_PROPAGATE_FAULT ; 

__attribute__((used)) static int FUNC1(struct x86_emulate_ctxt *ctxt, int vec,
			     u32 error, bool valid)
{
	FUNC0(vec > 0x1f);
	ctxt->exception.vector = vec;
	ctxt->exception.error_code = error;
	ctxt->exception.error_code_valid = valid;
	return X86EMUL_PROPAGATE_FAULT;
}