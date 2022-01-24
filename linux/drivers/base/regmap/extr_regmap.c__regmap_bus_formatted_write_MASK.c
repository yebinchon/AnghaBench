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
struct TYPE_4__ {int /*<<< orphan*/  buf_size; int /*<<< orphan*/  (* format_write ) (struct regmap*,unsigned int,unsigned int) ;} ;
struct regmap {TYPE_2__ format; int /*<<< orphan*/  work_buf; int /*<<< orphan*/  bus_context; TYPE_1__* bus; } ;
struct TYPE_3__ {int (* write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct regmap_range_node* FUNC1 (struct regmap*,unsigned int) ; 
 int FUNC2 (struct regmap*,unsigned int*,struct regmap_range_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,unsigned int,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,unsigned int,int) ; 

__attribute__((used)) static int FUNC7(void *context, unsigned int reg,
				       unsigned int val)
{
	int ret;
	struct regmap_range_node *range;
	struct regmap *map = context;

	FUNC0(!map->bus || !map->format.format_write);

	range = FUNC1(map, reg);
	if (range) {
		ret = FUNC2(map, &reg, range, 1);
		if (ret != 0)
			return ret;
	}

	map->format.format_write(map, reg, val);

	FUNC6(map, reg, 1);

	ret = map->bus->write(map->bus_context, map->work_buf,
			      map->format.buf_size);

	FUNC5(map, reg, 1);

	return ret;
}