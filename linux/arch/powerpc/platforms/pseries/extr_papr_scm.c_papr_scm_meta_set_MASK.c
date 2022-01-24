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
typedef  int uint8_t ;
typedef  unsigned long uint64_t ;
typedef  unsigned long uint32_t ;
typedef  unsigned long uint16_t ;
struct papr_scm_priv {scalar_t__ metadata_size; int /*<<< orphan*/  drc_index; } ;
struct nd_cmd_set_config_hdr {scalar_t__ in_offset; scalar_t__ in_length; scalar_t__ in_buf; } ;
typedef  scalar_t__ int64_t ;
typedef  int __be64 ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ H_PARAMETER ; 
 int /*<<< orphan*/  H_SCM_WRITE_METADATA ; 
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int,int) ; 

__attribute__((used)) static int FUNC4(struct papr_scm_priv *p,
			     struct nd_cmd_set_config_hdr *hdr)
{
	unsigned long offset, data_offset;
	int len, wrote;
	unsigned long data;
	__be64 data_be;
	int64_t ret;

	if ((hdr->in_offset + hdr->in_length) >= p->metadata_size)
		return -EINVAL;

	for (len = hdr->in_length; len; len -= wrote) {

		data_offset = hdr->in_length - len;
		offset = hdr->in_offset + data_offset;

		if (len >= 8) {
			data = *(uint64_t *)(hdr->in_buf + data_offset);
			data_be = FUNC2(data);
			wrote = 8;
		} else if (len >= 4) {
			data = *(uint32_t *)(hdr->in_buf + data_offset);
			data &= 0xffffffff;
			data_be = FUNC1(data);
			wrote = 4;
		} else if (len >= 2) {
			data = *(uint16_t *)(hdr->in_buf + data_offset);
			data &= 0xffff;
			data_be = FUNC0(data);
			wrote = 2;
		} else {
			data_be = *(uint8_t *)(hdr->in_buf + data_offset);
			data_be &= 0xff;
			wrote = 1;
		}

		ret = FUNC3(H_SCM_WRITE_METADATA, p->drc_index,
					 offset, data_be, wrote);
		if (ret == H_PARAMETER) /* bad DRC index */
			return -ENODEV;
		if (ret)
			return -EINVAL; /* other invalid parameter */
	}

	return 0;
}