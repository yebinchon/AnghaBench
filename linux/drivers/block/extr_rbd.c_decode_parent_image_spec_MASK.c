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
struct parent_image_info {int /*<<< orphan*/  snap_id; int /*<<< orphan*/ * image_id; int /*<<< orphan*/ * pool_ns; int /*<<< orphan*/  pool_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void**,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void**,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (void**,void*,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  e_inval ; 

__attribute__((used)) static int FUNC5(void **p, void *end,
				    struct parent_image_info *pii)
{
	u8 struct_v;
	u32 struct_len;
	int ret;

	ret = FUNC4(p, end, 1, "ParentImageSpec",
				  &struct_v, &struct_len);
	if (ret)
		return ret;

	FUNC2(p, end, pii->pool_id, e_inval);
	pii->pool_ns = FUNC3(p, end, NULL, GFP_KERNEL);
	if (FUNC0(pii->pool_ns)) {
		ret = FUNC1(pii->pool_ns);
		pii->pool_ns = NULL;
		return ret;
	}
	pii->image_id = FUNC3(p, end, NULL, GFP_KERNEL);
	if (FUNC0(pii->image_id)) {
		ret = FUNC1(pii->image_id);
		pii->image_id = NULL;
		return ret;
	}
	FUNC2(p, end, pii->snap_id, e_inval);
	return 0;

e_inval:
	return -EINVAL;
}