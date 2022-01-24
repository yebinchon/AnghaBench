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
struct shash_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WP384_DIGEST_SIZE ; 
 int /*<<< orphan*/  WP512_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct shash_desc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct shash_desc *desc, u8 *out)
{
	u8 D[64];

	FUNC2(desc, D);
	FUNC0(out, D, WP384_DIGEST_SIZE);
	FUNC1(D, WP512_DIGEST_SIZE);

	return 0;
}