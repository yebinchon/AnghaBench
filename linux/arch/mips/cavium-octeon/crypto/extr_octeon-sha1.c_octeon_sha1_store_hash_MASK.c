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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct sha1_state {int /*<<< orphan*/ * state; } ;
struct TYPE_2__ {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sha1_state *sctx)
{
	u64 *hash = (u64 *)sctx->state;
	union {
		u32 word[2];
		u64 dword;
	} hash_tail = { { sctx->state[4], } };

	FUNC1(hash[0], 0);
	FUNC1(hash[1], 1);
	FUNC1(hash_tail.dword, 2);
	FUNC0(&hash_tail.word[0], sizeof(hash_tail.word[0]));
}