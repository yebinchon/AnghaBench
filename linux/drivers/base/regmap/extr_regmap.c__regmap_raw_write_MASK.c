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
struct TYPE_2__ {size_t val_bytes; } ;
struct regmap {size_t max_raw_write; scalar_t__ use_single_write; TYPE_1__ format; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct regmap*,unsigned int,void const*,size_t) ; 
 scalar_t__ FUNC1 (struct regmap*,size_t) ; 

int FUNC2(struct regmap *map, unsigned int reg,
		      const void *val, size_t val_len)
{
	size_t val_bytes = map->format.val_bytes;
	size_t val_count = val_len / val_bytes;
	size_t chunk_count, chunk_bytes;
	size_t chunk_regs = val_count;
	int ret, i;

	if (!val_count)
		return -EINVAL;

	if (map->use_single_write)
		chunk_regs = 1;
	else if (map->max_raw_write && val_len > map->max_raw_write)
		chunk_regs = map->max_raw_write / val_bytes;

	chunk_count = val_count / chunk_regs;
	chunk_bytes = chunk_regs * val_bytes;

	/* Write as many bytes as possible with chunk_size */
	for (i = 0; i < chunk_count; i++) {
		ret = FUNC0(map, reg, val, chunk_bytes);
		if (ret)
			return ret;

		reg += FUNC1(map, chunk_regs);
		val += chunk_bytes;
		val_len -= chunk_bytes;
	}

	/* Write remaining bytes */
	if (val_len)
		ret = FUNC0(map, reg, val, val_len);

	return ret;
}