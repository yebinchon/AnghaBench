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
struct papr_scm_priv {TYPE_1__* pdev; int /*<<< orphan*/  metadata_size; } ;
struct nvdimm_bus_descriptor {int dummy; } ;
struct nvdimm {int dummy; } ;
struct nd_cmd_get_config_size {int max_xfer; int /*<<< orphan*/  config_size; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ND_CMD_GET_CONFIG_DATA 130 
#define  ND_CMD_GET_CONFIG_SIZE 129 
#define  ND_CMD_SET_CONFIG_DATA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct papr_scm_priv* FUNC1 (struct nvdimm*) ; 
 int FUNC2 (struct papr_scm_priv*,void*) ; 
 int FUNC3 (struct papr_scm_priv*,void*) ; 

int FUNC4(struct nvdimm_bus_descriptor *nd_desc, struct nvdimm *nvdimm,
		unsigned int cmd, void *buf, unsigned int buf_len, int *cmd_rc)
{
	struct nd_cmd_get_config_size *get_size_hdr;
	struct papr_scm_priv *p;

	/* Only dimm-specific calls are supported atm */
	if (!nvdimm)
		return -EINVAL;

	p = FUNC1(nvdimm);

	switch (cmd) {
	case ND_CMD_GET_CONFIG_SIZE:
		get_size_hdr = buf;

		get_size_hdr->status = 0;
		get_size_hdr->max_xfer = 8;
		get_size_hdr->config_size = p->metadata_size;
		*cmd_rc = 0;
		break;

	case ND_CMD_GET_CONFIG_DATA:
		*cmd_rc = FUNC2(p, buf);
		break;

	case ND_CMD_SET_CONFIG_DATA:
		*cmd_rc = FUNC3(p, buf);
		break;

	default:
		return -EINVAL;
	}

	FUNC0(&p->pdev->dev, "returned with cmd_rc = %d\n", *cmd_rc);

	return 0;
}