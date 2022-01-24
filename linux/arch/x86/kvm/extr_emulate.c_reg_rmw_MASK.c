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
typedef  int /*<<< orphan*/  ulong ;
struct x86_emulate_ctxt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct x86_emulate_ctxt*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (struct x86_emulate_ctxt*,unsigned int) ; 

__attribute__((used)) static ulong *FUNC2(struct x86_emulate_ctxt *ctxt, unsigned nr)
{
	FUNC0(ctxt, nr);
	return FUNC1(ctxt, nr);
}