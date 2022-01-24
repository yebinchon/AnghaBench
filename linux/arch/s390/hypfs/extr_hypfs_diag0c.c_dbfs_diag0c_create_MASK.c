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
struct hypfs_diag0c_hdr {int dummy; } ;
struct hypfs_diag0c_entry {int dummy; } ;
struct TYPE_2__ {unsigned int len; unsigned int count; int /*<<< orphan*/  version; int /*<<< orphan*/  tod_ext; } ;
struct hypfs_diag0c_data {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBFS_D0C_HDR_VERSION ; 
 scalar_t__ FUNC0 (struct hypfs_diag0c_data*) ; 
 int FUNC1 (struct hypfs_diag0c_data*) ; 
 struct hypfs_diag0c_data* FUNC2 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(void **data, void **data_free_ptr, size_t *size)
{
	struct hypfs_diag0c_data *diag0c_data;
	unsigned int count;

	diag0c_data = FUNC2(&count);
	if (FUNC0(diag0c_data))
		return FUNC1(diag0c_data);
	FUNC4(&diag0c_data->hdr, 0, sizeof(diag0c_data->hdr));
	FUNC3(diag0c_data->hdr.tod_ext);
	diag0c_data->hdr.len = count * sizeof(struct hypfs_diag0c_entry);
	diag0c_data->hdr.version = DBFS_D0C_HDR_VERSION;
	diag0c_data->hdr.count = count;
	*data = diag0c_data;
	*data_free_ptr = diag0c_data;
	*size = diag0c_data->hdr.len + sizeof(struct hypfs_diag0c_hdr);
	return 0;
}