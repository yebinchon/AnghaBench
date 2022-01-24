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
typedef  int /*<<< orphan*/  git_hash_ctx ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__* the_hash_algo ; 
 int FUNC1 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC2(git_hash_ctx *ctx, unsigned mode)
{
	/* large enough for 2^32 in octal */
	char buf[12];
	int len = FUNC1(buf, sizeof(buf), "%06o", mode);
	the_hash_algo->update_fn(ctx, buf, len);
}