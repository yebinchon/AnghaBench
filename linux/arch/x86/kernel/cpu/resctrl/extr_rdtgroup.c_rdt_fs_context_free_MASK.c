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
struct rdt_fs_context {int dummy; } ;
struct fs_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct rdt_fs_context*) ; 
 struct rdt_fs_context* FUNC2 (struct fs_context*) ; 

__attribute__((used)) static void FUNC3(struct fs_context *fc)
{
	struct rdt_fs_context *ctx = FUNC2(fc);

	FUNC0(fc);
	FUNC1(ctx);
}