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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  temp ;
struct sha1_state {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHA1_BLOCK_SIZE ; 
 int SHA_WORKSPACE_WORDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct sha1_state *sst, u8 const *src,
				  int blocks)
{
	u32 temp[SHA_WORKSPACE_WORDS];

	while (blocks--) {
		FUNC1(sst->state, src, temp);
		src += SHA1_BLOCK_SIZE;
	}
	FUNC0(temp, sizeof(temp));
}