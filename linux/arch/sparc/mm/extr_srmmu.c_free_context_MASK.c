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
struct ctx_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ctx_list*) ; 
 struct ctx_list* ctx_list_pool ; 
 int /*<<< orphan*/  FUNC1 (struct ctx_list*) ; 

__attribute__((used)) static inline void FUNC2(int context)
{
	struct ctx_list *ctx_old;

	ctx_old = ctx_list_pool + context;
	FUNC1(ctx_old);
	FUNC0(ctx_old);
}