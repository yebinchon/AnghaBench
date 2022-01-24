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
struct asymmetric_key_id {size_t len; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct asymmetric_key_id* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct asymmetric_key_id* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void const*,size_t) ; 

struct asymmetric_key_id *FUNC3(const void *val_1,
						     size_t len_1,
						     const void *val_2,
						     size_t len_2)
{
	struct asymmetric_key_id *kid;

	kid = FUNC1(sizeof(struct asymmetric_key_id) + len_1 + len_2,
		      GFP_KERNEL);
	if (!kid)
		return FUNC0(-ENOMEM);
	kid->len = len_1 + len_2;
	FUNC2(kid->data, val_1, len_1);
	FUNC2(kid->data + len_1, val_2, len_2);
	return kid;
}