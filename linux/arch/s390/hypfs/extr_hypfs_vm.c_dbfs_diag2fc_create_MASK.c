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
struct diag2fc_data {int dummy; } ;
struct dbfs_d2fc_hdr {int dummy; } ;
struct TYPE_2__ {unsigned int len; unsigned int count; int /*<<< orphan*/  reserved; int /*<<< orphan*/  version; int /*<<< orphan*/  tod_ext; } ;
struct dbfs_d2fc {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBFS_D2FC_HDR_VERSION ; 
 scalar_t__ FUNC0 (struct dbfs_d2fc*) ; 
 int FUNC1 (struct dbfs_d2fc*) ; 
 struct dbfs_d2fc* FUNC2 (int /*<<< orphan*/ ,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  guest_query ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(void **data, void **data_free_ptr, size_t *size)
{
	struct dbfs_d2fc *d2fc;
	unsigned int count;

	d2fc = FUNC2(guest_query, &count, sizeof(d2fc->hdr));
	if (FUNC0(d2fc))
		return FUNC1(d2fc);
	FUNC3(d2fc->hdr.tod_ext);
	d2fc->hdr.len = count * sizeof(struct diag2fc_data);
	d2fc->hdr.version = DBFS_D2FC_HDR_VERSION;
	d2fc->hdr.count = count;
	FUNC4(&d2fc->hdr.reserved, 0, sizeof(d2fc->hdr.reserved));
	*data = d2fc;
	*data_free_ptr = d2fc;
	*size = d2fc->hdr.len + sizeof(struct dbfs_d2fc_hdr);
	return 0;
}