#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap_range_node {int dummy; } ;
struct TYPE_4__ {unsigned int val_bytes; scalar_t__ pad_bytes; scalar_t__ reg_bytes; int /*<<< orphan*/  (* format_reg ) (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ;} ;
struct regmap {TYPE_2__ format; int /*<<< orphan*/  work_buf; int /*<<< orphan*/  bus_context; TYPE_1__* bus; int /*<<< orphan*/  read_flag_mask; int /*<<< orphan*/  reg_shift; } ;
struct TYPE_3__ {int (* read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*,unsigned int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct regmap_range_node* FUNC1 (struct regmap*,unsigned int) ; 
 int FUNC2 (struct regmap*,unsigned int*,struct regmap_range_node*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct regmap *map, unsigned int reg, void *val,
			    unsigned int val_len)
{
	struct regmap_range_node *range;
	int ret;

	FUNC0(!map->bus);

	if (!map->bus || !map->bus->read)
		return -EINVAL;

	range = FUNC1(map, reg);
	if (range) {
		ret = FUNC2(map, &reg, range,
					  val_len / map->format.val_bytes);
		if (ret != 0)
			return ret;
	}

	map->format.format_reg(map->work_buf, reg, map->reg_shift);
	FUNC3(map, map->format.reg_bytes,
				      map->read_flag_mask);
	FUNC7(map, reg, val_len / map->format.val_bytes);

	ret = map->bus->read(map->bus_context, map->work_buf,
			     map->format.reg_bytes + map->format.pad_bytes,
			     val, val_len);

	FUNC6(map, reg, val_len / map->format.val_bytes);

	return ret;
}