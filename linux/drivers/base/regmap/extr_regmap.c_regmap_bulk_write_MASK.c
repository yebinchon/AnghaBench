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
typedef  unsigned int u8 ;
typedef  unsigned int u64 ;
typedef  unsigned int u32 ;
typedef  unsigned int u16 ;
struct TYPE_2__ {size_t val_bytes; int /*<<< orphan*/  (* parse_inplace ) (void*) ;} ;
struct regmap {TYPE_1__ format; int /*<<< orphan*/  alloc_flags; int /*<<< orphan*/  lock_arg; int /*<<< orphan*/  (* unlock ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* lock ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  bus; int /*<<< orphan*/  reg_stride; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct regmap*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (void const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct regmap*,int) ; 
 int FUNC5 (struct regmap*,unsigned int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

int FUNC9(struct regmap *map, unsigned int reg, const void *val,
		     size_t val_count)
{
	int ret = 0, i;
	size_t val_bytes = map->format.val_bytes;

	if (!FUNC0(reg, map->reg_stride))
		return -EINVAL;

	/*
	 * Some devices don't support bulk write, for them we have a series of
	 * single write operations.
	 */
	if (!map->bus || !map->format.parse_inplace) {
		map->lock(map->lock_arg);
		for (i = 0; i < val_count; i++) {
			unsigned int ival;

			switch (val_bytes) {
			case 1:
				ival = *(u8 *)(val + (i * val_bytes));
				break;
			case 2:
				ival = *(u16 *)(val + (i * val_bytes));
				break;
			case 4:
				ival = *(u32 *)(val + (i * val_bytes));
				break;
#ifdef CONFIG_64BIT
			case 8:
				ival = *(u64 *)(val + (i * val_bytes));
				break;
#endif
			default:
				ret = -EINVAL;
				goto out;
			}

			ret = FUNC1(map,
					    reg + FUNC4(map, i),
					    ival);
			if (ret != 0)
				goto out;
		}
out:
		map->unlock(map->lock_arg);
	} else {
		void *wval;

		wval = FUNC3(val, val_count * val_bytes, map->alloc_flags);
		if (!wval)
			return -ENOMEM;

		for (i = 0; i < val_count * val_bytes; i += val_bytes)
			map->format.parse_inplace(wval + i);

		ret = FUNC5(map, reg, wval, val_bytes * val_count);

		FUNC2(wval);
	}
	return ret;
}