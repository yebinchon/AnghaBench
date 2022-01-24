#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct ghash_key {int /*<<< orphan*/  k; } ;
struct TYPE_3__ {int /*<<< orphan*/  a; int /*<<< orphan*/  b; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ be128 ;

/* Variables and functions */
 int /*<<< orphan*/  GHASH_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,char const*,struct ghash_key*,char const*) ; 

__attribute__((used)) static void FUNC9(int blocks, u64 dg[], const char *src,
			    struct ghash_key *key, const char *head)
{
	if (FUNC7(FUNC2())) {
		FUNC5();
		FUNC8(blocks, dg, src, key, head);
		FUNC6();
	} else {
		be128 dst = { FUNC1(dg[1]), FUNC1(dg[0]) };

		do {
			const u8 *in = src;

			if (head) {
				in = head;
				blocks++;
				head = NULL;
			} else {
				src += GHASH_BLOCK_SIZE;
			}

			FUNC3((u8 *)&dst, in, GHASH_BLOCK_SIZE);
			FUNC4(&dst, &key->k);
		} while (--blocks);

		dg[0] = FUNC0(dst.b);
		dg[1] = FUNC0(dst.a);
	}
}