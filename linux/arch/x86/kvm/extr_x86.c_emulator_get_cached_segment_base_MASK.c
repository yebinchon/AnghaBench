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
 int /*<<< orphan*/  FUNC0 (struct x86_emulate_ctxt*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned long FUNC2(
	struct x86_emulate_ctxt *ctxt, int seg)
{
	return FUNC1(FUNC0(ctxt), seg);
}