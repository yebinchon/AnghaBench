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
struct sev_data_dbg {unsigned long dst_addr; unsigned long src_addr; int len; int /*<<< orphan*/  handle; } ;
struct kvm_sev_info {int /*<<< orphan*/  handle; } ;
struct kvm {int dummy; } ;
struct TYPE_2__ {struct kvm_sev_info sev_info; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL_ACCOUNT ; 
 int /*<<< orphan*/  SEV_CMD_DBG_DECRYPT ; 
 int /*<<< orphan*/  SEV_CMD_DBG_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (struct sev_data_dbg*) ; 
 struct sev_data_dbg* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm*,int /*<<< orphan*/ ,struct sev_data_dbg*,int*) ; 
 TYPE_1__* FUNC3 (struct kvm*) ; 

__attribute__((used)) static int FUNC4(struct kvm *kvm, unsigned long src,
			       unsigned long dst, int size,
			       int *error, bool enc)
{
	struct kvm_sev_info *sev = &FUNC3(kvm)->sev_info;
	struct sev_data_dbg *data;
	int ret;

	data = FUNC1(sizeof(*data), GFP_KERNEL_ACCOUNT);
	if (!data)
		return -ENOMEM;

	data->handle = sev->handle;
	data->dst_addr = dst;
	data->src_addr = src;
	data->len = size;

	ret = FUNC2(kvm,
			    enc ? SEV_CMD_DBG_ENCRYPT : SEV_CMD_DBG_DECRYPT,
			    data, error);
	FUNC0(data);
	return ret;
}