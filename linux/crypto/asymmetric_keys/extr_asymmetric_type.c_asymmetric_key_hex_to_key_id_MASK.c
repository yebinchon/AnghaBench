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
struct asymmetric_key_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct asymmetric_key_id* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (char const*,struct asymmetric_key_id*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct asymmetric_key_id*) ; 
 struct asymmetric_key_id* FUNC3 (int,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char const*) ; 

struct asymmetric_key_id *FUNC5(const char *id)
{
	struct asymmetric_key_id *match_id;
	size_t asciihexlen;
	int ret;

	if (!*id)
		return FUNC0(-EINVAL);
	asciihexlen = FUNC4(id);
	if (asciihexlen & 1)
		return FUNC0(-EINVAL);

	match_id = FUNC3(sizeof(struct asymmetric_key_id) + asciihexlen / 2,
			   GFP_KERNEL);
	if (!match_id)
		return FUNC0(-ENOMEM);
	ret = FUNC1(id, match_id, asciihexlen / 2);
	if (ret < 0) {
		FUNC2(match_id);
		return FUNC0(-EINVAL);
	}
	return match_id;
}