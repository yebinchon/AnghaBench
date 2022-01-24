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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct shash_desc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct shash_desc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sm3_ce_transform ; 

__attribute__((used)) static int FUNC6(struct shash_desc *desc, u8 *out)
{
	if (!FUNC0())
		return FUNC1(desc, NULL, 0, out);

	FUNC2();
	FUNC4(desc, sm3_ce_transform);
	FUNC3();

	return FUNC5(desc, out);
}