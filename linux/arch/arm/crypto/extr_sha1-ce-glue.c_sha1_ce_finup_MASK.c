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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct shash_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct shash_desc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sha1_ce_transform ; 
 int FUNC6 (struct shash_desc*,int /*<<< orphan*/  const*,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct shash_desc *desc, const u8 *data,
			 unsigned int len, u8 *out)
{
	if (!FUNC0())
		return FUNC6(desc, data, len, out);

	FUNC1();
	if (len)
		FUNC4(desc, data, len, sha1_ce_transform);
	FUNC3(desc, sha1_ce_transform);
	FUNC2();

	return FUNC5(desc, out);
}