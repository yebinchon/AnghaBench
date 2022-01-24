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
struct kobject {int dummy; } ;
struct cppc_perf_fb_ctrs {int /*<<< orphan*/  delivered; int /*<<< orphan*/  reference; int /*<<< orphan*/  member_0; } ;
struct cpc_desc {int /*<<< orphan*/  cpu_id; } ;
struct attribute {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct cppc_perf_fb_ctrs*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpc_desc* FUNC2 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *kobj,
		struct attribute *attr, char *buf)
{
	struct cpc_desc *cpc_ptr = FUNC2(kobj);
	struct cppc_perf_fb_ctrs fb_ctrs = {0};
	int ret;

	ret = FUNC0(cpc_ptr->cpu_id, &fb_ctrs);
	if (ret)
		return ret;

	return FUNC1(buf, PAGE_SIZE, "ref:%llu del:%llu\n",
			fb_ctrs.reference, fb_ctrs.delivered);
}