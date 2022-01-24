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
 unsigned long FUNC0 (struct x86_emulate_ctxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct x86_emulate_ctxt*,int) ; 

__attribute__((used)) static inline unsigned long
FUNC2(struct x86_emulate_ctxt *ctxt, int reg)
{
	return FUNC0(ctxt, FUNC1(ctxt, reg));
}