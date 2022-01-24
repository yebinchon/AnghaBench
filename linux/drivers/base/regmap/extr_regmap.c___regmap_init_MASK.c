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
struct TYPE_2__ {int pad_bytes; int buf_size; void* format_val; scalar_t__ format_write; void* format_reg; int /*<<< orphan*/  parse_val; void* parse_inplace; void* val_bytes; void* reg_bytes; } ;
struct regmap_range_node {int reg_shift; int reg_stride; int reg_stride_order; int use_single_read; int use_single_write; int can_multi_write; scalar_t__ max_register; int defer_caching; unsigned int range_min; unsigned int range_max; scalar_t__ selector_reg; unsigned int window_start; scalar_t__ window_len; int /*<<< orphan*/  name; scalar_t__ hwlock; struct regmap_range_node* work_buf; int /*<<< orphan*/ * selector_work_buf; TYPE_1__ format; struct device* dev; int /*<<< orphan*/  selector_shift; int /*<<< orphan*/  selector_mask; struct regmap_range_node* map; int /*<<< orphan*/  range_tree; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_update_bits; int /*<<< orphan*/  reg_read; scalar_t__ read_flag_mask; scalar_t__ write_flag_mask; int /*<<< orphan*/  async_waitq; int /*<<< orphan*/  async_free; int /*<<< orphan*/  async_list; int /*<<< orphan*/  async_lock; int /*<<< orphan*/  cache_type; int /*<<< orphan*/  readable_noinc_reg; int /*<<< orphan*/  writeable_noinc_reg; int /*<<< orphan*/  precious_reg; int /*<<< orphan*/  volatile_reg; int /*<<< orphan*/  readable_reg; int /*<<< orphan*/  writeable_reg; int /*<<< orphan*/  rd_noinc_table; int /*<<< orphan*/  wr_noinc_table; int /*<<< orphan*/  precious_table; int /*<<< orphan*/  volatile_table; int /*<<< orphan*/  rd_table; int /*<<< orphan*/  wr_table; void* bus_context; struct regmap_bus const* bus; int /*<<< orphan*/  max_raw_write; int /*<<< orphan*/  max_raw_read; int /*<<< orphan*/  alloc_flags; struct regmap_range_node* lock_arg; int /*<<< orphan*/  mutex; scalar_t__ unlock; scalar_t__ lock; int /*<<< orphan*/  spinlock; } ;
struct regmap_range_cfg {scalar_t__ range_max; scalar_t__ range_min; scalar_t__ selector_reg; scalar_t__ window_len; unsigned int window_start; int /*<<< orphan*/  selector_shift; int /*<<< orphan*/  selector_mask; int /*<<< orphan*/  name; } ;
struct regmap_config {int hwlock_mode; int reg_bits; int pad_bits; int val_bits; int reg_stride; scalar_t__ max_register; int num_ranges; int /*<<< orphan*/  name; struct regmap_range_cfg* ranges; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; scalar_t__ write_flag_mask; scalar_t__ read_flag_mask; scalar_t__ zero_flag_mask; int /*<<< orphan*/  cache_type; int /*<<< orphan*/  readable_noinc_reg; int /*<<< orphan*/  writeable_noinc_reg; int /*<<< orphan*/  precious_reg; int /*<<< orphan*/  volatile_reg; int /*<<< orphan*/  readable_reg; int /*<<< orphan*/  writeable_reg; int /*<<< orphan*/  rd_noinc_table; int /*<<< orphan*/  wr_noinc_table; int /*<<< orphan*/  precious_table; int /*<<< orphan*/  volatile_table; int /*<<< orphan*/  rd_table; int /*<<< orphan*/  wr_table; scalar_t__ can_multi_write; scalar_t__ use_single_write; scalar_t__ use_single_read; scalar_t__ fast_io; int /*<<< orphan*/  hwlock_id; scalar_t__ use_hwlock; struct regmap_range_node* lock_arg; scalar_t__ unlock; scalar_t__ lock; scalar_t__ disable_locking; } ;
struct regmap_bus {int /*<<< orphan*/  reg_update_bits; scalar_t__ write; int /*<<< orphan*/  read; scalar_t__ read_flag_mask; int /*<<< orphan*/  max_raw_write; int /*<<< orphan*/  max_raw_read; scalar_t__ fast_io; } ;
struct regmap {int reg_shift; int reg_stride; int reg_stride_order; int use_single_read; int use_single_write; int can_multi_write; scalar_t__ max_register; int defer_caching; unsigned int range_min; unsigned int range_max; scalar_t__ selector_reg; unsigned int window_start; scalar_t__ window_len; int /*<<< orphan*/  name; scalar_t__ hwlock; struct regmap* work_buf; int /*<<< orphan*/ * selector_work_buf; TYPE_1__ format; struct device* dev; int /*<<< orphan*/  selector_shift; int /*<<< orphan*/  selector_mask; struct regmap* map; int /*<<< orphan*/  range_tree; int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_update_bits; int /*<<< orphan*/  reg_read; scalar_t__ read_flag_mask; scalar_t__ write_flag_mask; int /*<<< orphan*/  async_waitq; int /*<<< orphan*/  async_free; int /*<<< orphan*/  async_list; int /*<<< orphan*/  async_lock; int /*<<< orphan*/  cache_type; int /*<<< orphan*/  readable_noinc_reg; int /*<<< orphan*/  writeable_noinc_reg; int /*<<< orphan*/  precious_reg; int /*<<< orphan*/  volatile_reg; int /*<<< orphan*/  readable_reg; int /*<<< orphan*/  writeable_reg; int /*<<< orphan*/  rd_noinc_table; int /*<<< orphan*/  wr_noinc_table; int /*<<< orphan*/  precious_table; int /*<<< orphan*/  volatile_table; int /*<<< orphan*/  rd_table; int /*<<< orphan*/  wr_table; void* bus_context; struct regmap_bus const* bus; int /*<<< orphan*/  max_raw_write; int /*<<< orphan*/  max_raw_read; int /*<<< orphan*/  alloc_flags; struct regmap* lock_arg; int /*<<< orphan*/  mutex; scalar_t__ unlock; scalar_t__ lock; int /*<<< orphan*/  spinlock; } ;
struct lock_class_key {int dummy; } ;
struct device {int dummy; } ;
typedef  enum regmap_endian { ____Placeholder_regmap_endian } regmap_endian ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct regmap_range_node* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HWLOCK_IRQ 132 
#define  HWLOCK_IRQSTATE 131 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
#define  REGMAP_ENDIAN_BIG 130 
#define  REGMAP_ENDIAN_LITTLE 129 
#define  REGMAP_ENDIAN_NATIVE 128 
 int /*<<< orphan*/  _regmap_bus_formatted_write ; 
 int /*<<< orphan*/  _regmap_bus_raw_write ; 
 int /*<<< orphan*/  _regmap_bus_read ; 
 int /*<<< orphan*/  _regmap_bus_reg_read ; 
 int /*<<< orphan*/  _regmap_bus_reg_write ; 
 int /*<<< orphan*/  FUNC3 (struct regmap_range_node*,struct regmap_range_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct regmap_range_node*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct lock_class_key*,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct regmap_range_node*) ; 
 int FUNC17 (struct regmap_range_node*,struct regmap_config const*) ; 
 int FUNC18 (struct device*,struct regmap_range_node*,struct regmap_config const*) ; 
 int /*<<< orphan*/  FUNC19 (struct regmap_range_node*) ; 
 int /*<<< orphan*/  FUNC20 (struct regmap_range_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ regmap_format_10_14_write ; 
 void* regmap_format_16_be ; 
 void* regmap_format_16_le ; 
 void* regmap_format_16_native ; 
 void* regmap_format_24 ; 
 scalar_t__ regmap_format_2_6_write ; 
 void* regmap_format_32_be ; 
 void* regmap_format_32_le ; 
 void* regmap_format_32_native ; 
 scalar_t__ regmap_format_4_12_write ; 
 void* regmap_format_64_be ; 
 void* regmap_format_64_le ; 
 void* regmap_format_64_native ; 
 scalar_t__ regmap_format_7_9_write ; 
 void* regmap_format_8 ; 
 int FUNC21 (struct regmap_bus const*,struct regmap_config const*) ; 
 int FUNC22 (struct device*,struct regmap_bus const*,struct regmap_config const*) ; 
 scalar_t__ regmap_lock_hwlock ; 
 scalar_t__ regmap_lock_hwlock_irq ; 
 scalar_t__ regmap_lock_hwlock_irqsave ; 
 scalar_t__ regmap_lock_mutex ; 
 scalar_t__ regmap_lock_spinlock ; 
 scalar_t__ regmap_lock_unlock_none ; 
 int /*<<< orphan*/  regmap_parse_16_be ; 
 void* regmap_parse_16_be_inplace ; 
 int /*<<< orphan*/  regmap_parse_16_le ; 
 void* regmap_parse_16_le_inplace ; 
 int /*<<< orphan*/  regmap_parse_16_native ; 
 int /*<<< orphan*/  regmap_parse_24 ; 
 int /*<<< orphan*/  regmap_parse_32_be ; 
 void* regmap_parse_32_be_inplace ; 
 int /*<<< orphan*/  regmap_parse_32_le ; 
 void* regmap_parse_32_le_inplace ; 
 int /*<<< orphan*/  regmap_parse_32_native ; 
 int /*<<< orphan*/  regmap_parse_64_be ; 
 void* regmap_parse_64_be_inplace ; 
 int /*<<< orphan*/  regmap_parse_64_le ; 
 void* regmap_parse_64_le_inplace ; 
 int /*<<< orphan*/  regmap_parse_64_native ; 
 int /*<<< orphan*/  regmap_parse_8 ; 
 void* regmap_parse_inplace_noop ; 
 int /*<<< orphan*/  FUNC23 (struct regmap_range_node*) ; 
 scalar_t__ regmap_unlock_hwlock ; 
 scalar_t__ regmap_unlock_hwlock_irq ; 
 scalar_t__ regmap_unlock_hwlock_irqrestore ; 
 scalar_t__ regmap_unlock_mutex ; 
 scalar_t__ regmap_unlock_spinlock ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

struct regmap *FUNC25(struct device *dev,
			     const struct regmap_bus *bus,
			     void *bus_context,
			     const struct regmap_config *config,
			     struct lock_class_key *lock_key,
			     const char *lock_name)
{
	struct regmap *map;
	int ret = -EINVAL;
	enum regmap_endian reg_endian, val_endian;
	int i, j;

	if (!config)
		goto err;

	map = FUNC13(sizeof(*map), GFP_KERNEL);
	if (map == NULL) {
		ret = -ENOMEM;
		goto err;
	}

	if (config->name) {
		map->name = FUNC12(config->name, GFP_KERNEL);
		if (!map->name) {
			ret = -ENOMEM;
			goto err_map;
		}
	}

	if (config->disable_locking) {
		map->lock = map->unlock = regmap_lock_unlock_none;
		FUNC19(map);
	} else if (config->lock && config->unlock) {
		map->lock = config->lock;
		map->unlock = config->unlock;
		map->lock_arg = config->lock_arg;
	} else if (config->use_hwlock) {
		map->hwlock = FUNC6(config->hwlock_id);
		if (!map->hwlock) {
			ret = -ENXIO;
			goto err_name;
		}

		switch (config->hwlock_mode) {
		case HWLOCK_IRQSTATE:
			map->lock = regmap_lock_hwlock_irqsave;
			map->unlock = regmap_unlock_hwlock_irqrestore;
			break;
		case HWLOCK_IRQ:
			map->lock = regmap_lock_hwlock_irq;
			map->unlock = regmap_unlock_hwlock_irq;
			break;
		default:
			map->lock = regmap_lock_hwlock;
			map->unlock = regmap_unlock_hwlock;
			break;
		}

		map->lock_arg = map;
	} else {
		if ((bus && bus->fast_io) ||
		    config->fast_io) {
			FUNC24(&map->spinlock);
			map->lock = regmap_lock_spinlock;
			map->unlock = regmap_unlock_spinlock;
			FUNC14(&map->spinlock,
						   lock_key, lock_name);
		} else {
			FUNC15(&map->mutex);
			map->lock = regmap_lock_mutex;
			map->unlock = regmap_unlock_mutex;
			FUNC14(&map->mutex,
						   lock_key, lock_name);
		}
		map->lock_arg = map;
	}

	/*
	 * When we write in fast-paths with regmap_bulk_write() don't allocate
	 * scratch buffers with sleeping allocations.
	 */
	if ((bus && bus->fast_io) || config->fast_io)
		map->alloc_flags = GFP_ATOMIC;
	else
		map->alloc_flags = GFP_KERNEL;

	map->format.reg_bytes = FUNC0(config->reg_bits, 8);
	map->format.pad_bytes = config->pad_bits / 8;
	map->format.val_bytes = FUNC0(config->val_bits, 8);
	map->format.buf_size = FUNC0(config->reg_bits +
			config->val_bits + config->pad_bits, 8);
	map->reg_shift = config->pad_bits % 8;
	if (config->reg_stride)
		map->reg_stride = config->reg_stride;
	else
		map->reg_stride = 1;
	if (FUNC9(map->reg_stride))
		map->reg_stride_order = FUNC7(map->reg_stride);
	else
		map->reg_stride_order = -1;
	map->use_single_read = config->use_single_read || !bus || !bus->read;
	map->use_single_write = config->use_single_write || !bus || !bus->write;
	map->can_multi_write = config->can_multi_write && bus && bus->write;
	if (bus) {
		map->max_raw_read = bus->max_raw_read;
		map->max_raw_write = bus->max_raw_write;
	}
	map->dev = dev;
	map->bus = bus;
	map->bus_context = bus_context;
	map->max_register = config->max_register;
	map->wr_table = config->wr_table;
	map->rd_table = config->rd_table;
	map->volatile_table = config->volatile_table;
	map->precious_table = config->precious_table;
	map->wr_noinc_table = config->wr_noinc_table;
	map->rd_noinc_table = config->rd_noinc_table;
	map->writeable_reg = config->writeable_reg;
	map->readable_reg = config->readable_reg;
	map->volatile_reg = config->volatile_reg;
	map->precious_reg = config->precious_reg;
	map->writeable_noinc_reg = config->writeable_noinc_reg;
	map->readable_noinc_reg = config->readable_noinc_reg;
	map->cache_type = config->cache_type;

	FUNC24(&map->async_lock);
	FUNC2(&map->async_list);
	FUNC2(&map->async_free);
	FUNC8(&map->async_waitq);

	if (config->read_flag_mask ||
	    config->write_flag_mask ||
	    config->zero_flag_mask) {
		map->read_flag_mask = config->read_flag_mask;
		map->write_flag_mask = config->write_flag_mask;
	} else if (bus) {
		map->read_flag_mask = bus->read_flag_mask;
	}

	if (!bus) {
		map->reg_read  = config->reg_read;
		map->reg_write = config->reg_write;

		map->defer_caching = false;
		goto skip_format_initialization;
	} else if (!bus->read || !bus->write) {
		map->reg_read = _regmap_bus_reg_read;
		map->reg_write = _regmap_bus_reg_write;

		map->defer_caching = false;
		goto skip_format_initialization;
	} else {
		map->reg_read  = _regmap_bus_read;
		map->reg_update_bits = bus->reg_update_bits;
	}

	reg_endian = FUNC21(bus, config);
	val_endian = FUNC22(dev, bus, config);

	switch (config->reg_bits + map->reg_shift) {
	case 2:
		switch (config->val_bits) {
		case 6:
			map->format.format_write = regmap_format_2_6_write;
			break;
		default:
			goto err_hwlock;
		}
		break;

	case 4:
		switch (config->val_bits) {
		case 12:
			map->format.format_write = regmap_format_4_12_write;
			break;
		default:
			goto err_hwlock;
		}
		break;

	case 7:
		switch (config->val_bits) {
		case 9:
			map->format.format_write = regmap_format_7_9_write;
			break;
		default:
			goto err_hwlock;
		}
		break;

	case 10:
		switch (config->val_bits) {
		case 14:
			map->format.format_write = regmap_format_10_14_write;
			break;
		default:
			goto err_hwlock;
		}
		break;

	case 8:
		map->format.format_reg = regmap_format_8;
		break;

	case 16:
		switch (reg_endian) {
		case REGMAP_ENDIAN_BIG:
			map->format.format_reg = regmap_format_16_be;
			break;
		case REGMAP_ENDIAN_LITTLE:
			map->format.format_reg = regmap_format_16_le;
			break;
		case REGMAP_ENDIAN_NATIVE:
			map->format.format_reg = regmap_format_16_native;
			break;
		default:
			goto err_hwlock;
		}
		break;

	case 24:
		if (reg_endian != REGMAP_ENDIAN_BIG)
			goto err_hwlock;
		map->format.format_reg = regmap_format_24;
		break;

	case 32:
		switch (reg_endian) {
		case REGMAP_ENDIAN_BIG:
			map->format.format_reg = regmap_format_32_be;
			break;
		case REGMAP_ENDIAN_LITTLE:
			map->format.format_reg = regmap_format_32_le;
			break;
		case REGMAP_ENDIAN_NATIVE:
			map->format.format_reg = regmap_format_32_native;
			break;
		default:
			goto err_hwlock;
		}
		break;

#ifdef CONFIG_64BIT
	case 64:
		switch (reg_endian) {
		case REGMAP_ENDIAN_BIG:
			map->format.format_reg = regmap_format_64_be;
			break;
		case REGMAP_ENDIAN_LITTLE:
			map->format.format_reg = regmap_format_64_le;
			break;
		case REGMAP_ENDIAN_NATIVE:
			map->format.format_reg = regmap_format_64_native;
			break;
		default:
			goto err_hwlock;
		}
		break;
#endif

	default:
		goto err_hwlock;
	}

	if (val_endian == REGMAP_ENDIAN_NATIVE)
		map->format.parse_inplace = regmap_parse_inplace_noop;

	switch (config->val_bits) {
	case 8:
		map->format.format_val = regmap_format_8;
		map->format.parse_val = regmap_parse_8;
		map->format.parse_inplace = regmap_parse_inplace_noop;
		break;
	case 16:
		switch (val_endian) {
		case REGMAP_ENDIAN_BIG:
			map->format.format_val = regmap_format_16_be;
			map->format.parse_val = regmap_parse_16_be;
			map->format.parse_inplace = regmap_parse_16_be_inplace;
			break;
		case REGMAP_ENDIAN_LITTLE:
			map->format.format_val = regmap_format_16_le;
			map->format.parse_val = regmap_parse_16_le;
			map->format.parse_inplace = regmap_parse_16_le_inplace;
			break;
		case REGMAP_ENDIAN_NATIVE:
			map->format.format_val = regmap_format_16_native;
			map->format.parse_val = regmap_parse_16_native;
			break;
		default:
			goto err_hwlock;
		}
		break;
	case 24:
		if (val_endian != REGMAP_ENDIAN_BIG)
			goto err_hwlock;
		map->format.format_val = regmap_format_24;
		map->format.parse_val = regmap_parse_24;
		break;
	case 32:
		switch (val_endian) {
		case REGMAP_ENDIAN_BIG:
			map->format.format_val = regmap_format_32_be;
			map->format.parse_val = regmap_parse_32_be;
			map->format.parse_inplace = regmap_parse_32_be_inplace;
			break;
		case REGMAP_ENDIAN_LITTLE:
			map->format.format_val = regmap_format_32_le;
			map->format.parse_val = regmap_parse_32_le;
			map->format.parse_inplace = regmap_parse_32_le_inplace;
			break;
		case REGMAP_ENDIAN_NATIVE:
			map->format.format_val = regmap_format_32_native;
			map->format.parse_val = regmap_parse_32_native;
			break;
		default:
			goto err_hwlock;
		}
		break;
#ifdef CONFIG_64BIT
	case 64:
		switch (val_endian) {
		case REGMAP_ENDIAN_BIG:
			map->format.format_val = regmap_format_64_be;
			map->format.parse_val = regmap_parse_64_be;
			map->format.parse_inplace = regmap_parse_64_be_inplace;
			break;
		case REGMAP_ENDIAN_LITTLE:
			map->format.format_val = regmap_format_64_le;
			map->format.parse_val = regmap_parse_64_le;
			map->format.parse_inplace = regmap_parse_64_le_inplace;
			break;
		case REGMAP_ENDIAN_NATIVE:
			map->format.format_val = regmap_format_64_native;
			map->format.parse_val = regmap_parse_64_native;
			break;
		default:
			goto err_hwlock;
		}
		break;
#endif
	}

	if (map->format.format_write) {
		if ((reg_endian != REGMAP_ENDIAN_BIG) ||
		    (val_endian != REGMAP_ENDIAN_BIG))
			goto err_hwlock;
		map->use_single_write = true;
	}

	if (!map->format.format_write &&
	    !(map->format.format_reg && map->format.format_val))
		goto err_hwlock;

	map->work_buf = FUNC13(map->format.buf_size, GFP_KERNEL);
	if (map->work_buf == NULL) {
		ret = -ENOMEM;
		goto err_hwlock;
	}

	if (map->format.format_write) {
		map->defer_caching = false;
		map->reg_write = _regmap_bus_formatted_write;
	} else if (map->format.format_val) {
		map->defer_caching = true;
		map->reg_write = _regmap_bus_raw_write;
	}

skip_format_initialization:

	map->range_tree = RB_ROOT;
	for (i = 0; i < config->num_ranges; i++) {
		const struct regmap_range_cfg *range_cfg = &config->ranges[i];
		struct regmap_range_node *new;

		/* Sanity check */
		if (range_cfg->range_max < range_cfg->range_min) {
			FUNC4(map->dev, "Invalid range %d: %d < %d\n", i,
				range_cfg->range_max, range_cfg->range_min);
			goto err_range;
		}

		if (range_cfg->range_max > map->max_register) {
			FUNC4(map->dev, "Invalid range %d: %d > %d\n", i,
				range_cfg->range_max, map->max_register);
			goto err_range;
		}

		if (range_cfg->selector_reg > map->max_register) {
			FUNC4(map->dev,
				"Invalid range %d: selector out of map\n", i);
			goto err_range;
		}

		if (range_cfg->window_len == 0) {
			FUNC4(map->dev, "Invalid range %d: window_len 0\n",
				i);
			goto err_range;
		}

		/* Make sure, that this register range has no selector
		   or data window within its boundary */
		for (j = 0; j < config->num_ranges; j++) {
			unsigned sel_reg = config->ranges[j].selector_reg;
			unsigned win_min = config->ranges[j].window_start;
			unsigned win_max = win_min +
					   config->ranges[j].window_len - 1;

			/* Allow data window inside its own virtual range */
			if (j == i)
				continue;

			if (range_cfg->range_min <= sel_reg &&
			    sel_reg <= range_cfg->range_max) {
				FUNC4(map->dev,
					"Range %d: selector for %d in window\n",
					i, j);
				goto err_range;
			}

			if (!(win_max < range_cfg->range_min ||
			      win_min > range_cfg->range_max)) {
				FUNC4(map->dev,
					"Range %d: window for %d in window\n",
					i, j);
				goto err_range;
			}
		}

		new = FUNC13(sizeof(*new), GFP_KERNEL);
		if (new == NULL) {
			ret = -ENOMEM;
			goto err_range;
		}

		new->map = map;
		new->name = range_cfg->name;
		new->range_min = range_cfg->range_min;
		new->range_max = range_cfg->range_max;
		new->selector_reg = range_cfg->selector_reg;
		new->selector_mask = range_cfg->selector_mask;
		new->selector_shift = range_cfg->selector_shift;
		new->window_start = range_cfg->window_start;
		new->window_len = range_cfg->window_len;

		if (!FUNC3(map, new)) {
			FUNC4(map->dev, "Failed to add range %d\n", i);
			FUNC10(new);
			goto err_range;
		}

		if (map->selector_work_buf == NULL) {
			map->selector_work_buf =
				FUNC13(map->format.buf_size, GFP_KERNEL);
			if (map->selector_work_buf == NULL) {
				ret = -ENOMEM;
				goto err_range;
			}
		}
	}

	ret = FUNC17(map, config);
	if (ret != 0)
		goto err_range;

	if (dev) {
		ret = FUNC18(dev, map, config);
		if (ret != 0)
			goto err_regcache;
	} else {
		FUNC20(map, config->name);
	}

	return map;

err_regcache:
	FUNC16(map);
err_range:
	FUNC23(map);
	FUNC10(map->work_buf);
err_hwlock:
	if (map->hwlock)
		FUNC5(map->hwlock);
err_name:
	FUNC11(map->name);
err_map:
	FUNC10(map);
err:
	return FUNC1(ret);
}