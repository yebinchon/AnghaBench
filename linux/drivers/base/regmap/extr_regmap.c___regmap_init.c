
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pad_bytes; int buf_size; void* format_val; scalar_t__ format_write; void* format_reg; int parse_val; void* parse_inplace; void* val_bytes; void* reg_bytes; } ;
struct regmap_range_node {int reg_shift; int reg_stride; int reg_stride_order; int use_single_read; int use_single_write; int can_multi_write; scalar_t__ max_register; int defer_caching; unsigned int range_min; unsigned int range_max; scalar_t__ selector_reg; unsigned int window_start; scalar_t__ window_len; int name; scalar_t__ hwlock; struct regmap_range_node* work_buf; int * selector_work_buf; TYPE_1__ format; struct device* dev; int selector_shift; int selector_mask; struct regmap_range_node* map; int range_tree; int reg_write; int reg_update_bits; int reg_read; scalar_t__ read_flag_mask; scalar_t__ write_flag_mask; int async_waitq; int async_free; int async_list; int async_lock; int cache_type; int readable_noinc_reg; int writeable_noinc_reg; int precious_reg; int volatile_reg; int readable_reg; int writeable_reg; int rd_noinc_table; int wr_noinc_table; int precious_table; int volatile_table; int rd_table; int wr_table; void* bus_context; struct regmap_bus const* bus; int max_raw_write; int max_raw_read; int alloc_flags; struct regmap_range_node* lock_arg; int mutex; scalar_t__ unlock; scalar_t__ lock; int spinlock; } ;
struct regmap_range_cfg {scalar_t__ range_max; scalar_t__ range_min; scalar_t__ selector_reg; scalar_t__ window_len; unsigned int window_start; int selector_shift; int selector_mask; int name; } ;
struct regmap_config {int hwlock_mode; int reg_bits; int pad_bits; int val_bits; int reg_stride; scalar_t__ max_register; int num_ranges; int name; struct regmap_range_cfg* ranges; int reg_write; int reg_read; scalar_t__ write_flag_mask; scalar_t__ read_flag_mask; scalar_t__ zero_flag_mask; int cache_type; int readable_noinc_reg; int writeable_noinc_reg; int precious_reg; int volatile_reg; int readable_reg; int writeable_reg; int rd_noinc_table; int wr_noinc_table; int precious_table; int volatile_table; int rd_table; int wr_table; scalar_t__ can_multi_write; scalar_t__ use_single_write; scalar_t__ use_single_read; scalar_t__ fast_io; int hwlock_id; scalar_t__ use_hwlock; struct regmap_range_node* lock_arg; scalar_t__ unlock; scalar_t__ lock; scalar_t__ disable_locking; } ;
struct regmap_bus {int reg_update_bits; scalar_t__ write; int read; scalar_t__ read_flag_mask; int max_raw_write; int max_raw_read; scalar_t__ fast_io; } ;
struct regmap {int reg_shift; int reg_stride; int reg_stride_order; int use_single_read; int use_single_write; int can_multi_write; scalar_t__ max_register; int defer_caching; unsigned int range_min; unsigned int range_max; scalar_t__ selector_reg; unsigned int window_start; scalar_t__ window_len; int name; scalar_t__ hwlock; struct regmap* work_buf; int * selector_work_buf; TYPE_1__ format; struct device* dev; int selector_shift; int selector_mask; struct regmap* map; int range_tree; int reg_write; int reg_update_bits; int reg_read; scalar_t__ read_flag_mask; scalar_t__ write_flag_mask; int async_waitq; int async_free; int async_list; int async_lock; int cache_type; int readable_noinc_reg; int writeable_noinc_reg; int precious_reg; int volatile_reg; int readable_reg; int writeable_reg; int rd_noinc_table; int wr_noinc_table; int precious_table; int volatile_table; int rd_table; int wr_table; void* bus_context; struct regmap_bus const* bus; int max_raw_write; int max_raw_read; int alloc_flags; struct regmap* lock_arg; int mutex; scalar_t__ unlock; scalar_t__ lock; int spinlock; } ;
struct lock_class_key {int dummy; } ;
struct device {int dummy; } ;
typedef enum regmap_endian { ____Placeholder_regmap_endian } regmap_endian ;


 void* DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 struct regmap_range_node* ERR_PTR (int) ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;


 int INIT_LIST_HEAD (int *) ;
 int RB_ROOT ;



 int _regmap_bus_formatted_write ;
 int _regmap_bus_raw_write ;
 int _regmap_bus_read ;
 int _regmap_bus_reg_read ;
 int _regmap_bus_reg_write ;
 int _regmap_range_add (struct regmap_range_node*,struct regmap_range_node*) ;
 int dev_err (struct device*,char*,int,...) ;
 int hwspin_lock_free (scalar_t__) ;
 scalar_t__ hwspin_lock_request_specific (int ) ;
 int ilog2 (int) ;
 int init_waitqueue_head (int *) ;
 scalar_t__ is_power_of_2 (int) ;
 int kfree (struct regmap_range_node*) ;
 int kfree_const (int ) ;
 int kstrdup_const (int ,int ) ;
 void* kzalloc (int,int ) ;
 int lockdep_set_class_and_name (int *,struct lock_class_key*,char const*) ;
 int mutex_init (int *) ;
 int regcache_exit (struct regmap_range_node*) ;
 int regcache_init (struct regmap_range_node*,struct regmap_config const*) ;
 int regmap_attach_dev (struct device*,struct regmap_range_node*,struct regmap_config const*) ;
 int regmap_debugfs_disable (struct regmap_range_node*) ;
 int regmap_debugfs_init (struct regmap_range_node*,int ) ;
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
 int regmap_get_reg_endian (struct regmap_bus const*,struct regmap_config const*) ;
 int regmap_get_val_endian (struct device*,struct regmap_bus const*,struct regmap_config const*) ;
 scalar_t__ regmap_lock_hwlock ;
 scalar_t__ regmap_lock_hwlock_irq ;
 scalar_t__ regmap_lock_hwlock_irqsave ;
 scalar_t__ regmap_lock_mutex ;
 scalar_t__ regmap_lock_spinlock ;
 scalar_t__ regmap_lock_unlock_none ;
 int regmap_parse_16_be ;
 void* regmap_parse_16_be_inplace ;
 int regmap_parse_16_le ;
 void* regmap_parse_16_le_inplace ;
 int regmap_parse_16_native ;
 int regmap_parse_24 ;
 int regmap_parse_32_be ;
 void* regmap_parse_32_be_inplace ;
 int regmap_parse_32_le ;
 void* regmap_parse_32_le_inplace ;
 int regmap_parse_32_native ;
 int regmap_parse_64_be ;
 void* regmap_parse_64_be_inplace ;
 int regmap_parse_64_le ;
 void* regmap_parse_64_le_inplace ;
 int regmap_parse_64_native ;
 int regmap_parse_8 ;
 void* regmap_parse_inplace_noop ;
 int regmap_range_exit (struct regmap_range_node*) ;
 scalar_t__ regmap_unlock_hwlock ;
 scalar_t__ regmap_unlock_hwlock_irq ;
 scalar_t__ regmap_unlock_hwlock_irqrestore ;
 scalar_t__ regmap_unlock_mutex ;
 scalar_t__ regmap_unlock_spinlock ;
 int spin_lock_init (int *) ;

struct regmap *__regmap_init(struct device *dev,
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

 map = kzalloc(sizeof(*map), GFP_KERNEL);
 if (map == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }

 if (config->name) {
  map->name = kstrdup_const(config->name, GFP_KERNEL);
  if (!map->name) {
   ret = -ENOMEM;
   goto err_map;
  }
 }

 if (config->disable_locking) {
  map->lock = map->unlock = regmap_lock_unlock_none;
  regmap_debugfs_disable(map);
 } else if (config->lock && config->unlock) {
  map->lock = config->lock;
  map->unlock = config->unlock;
  map->lock_arg = config->lock_arg;
 } else if (config->use_hwlock) {
  map->hwlock = hwspin_lock_request_specific(config->hwlock_id);
  if (!map->hwlock) {
   ret = -ENXIO;
   goto err_name;
  }

  switch (config->hwlock_mode) {
  case 131:
   map->lock = regmap_lock_hwlock_irqsave;
   map->unlock = regmap_unlock_hwlock_irqrestore;
   break;
  case 132:
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
   spin_lock_init(&map->spinlock);
   map->lock = regmap_lock_spinlock;
   map->unlock = regmap_unlock_spinlock;
   lockdep_set_class_and_name(&map->spinlock,
         lock_key, lock_name);
  } else {
   mutex_init(&map->mutex);
   map->lock = regmap_lock_mutex;
   map->unlock = regmap_unlock_mutex;
   lockdep_set_class_and_name(&map->mutex,
         lock_key, lock_name);
  }
  map->lock_arg = map;
 }





 if ((bus && bus->fast_io) || config->fast_io)
  map->alloc_flags = GFP_ATOMIC;
 else
  map->alloc_flags = GFP_KERNEL;

 map->format.reg_bytes = DIV_ROUND_UP(config->reg_bits, 8);
 map->format.pad_bytes = config->pad_bits / 8;
 map->format.val_bytes = DIV_ROUND_UP(config->val_bits, 8);
 map->format.buf_size = DIV_ROUND_UP(config->reg_bits +
   config->val_bits + config->pad_bits, 8);
 map->reg_shift = config->pad_bits % 8;
 if (config->reg_stride)
  map->reg_stride = config->reg_stride;
 else
  map->reg_stride = 1;
 if (is_power_of_2(map->reg_stride))
  map->reg_stride_order = ilog2(map->reg_stride);
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

 spin_lock_init(&map->async_lock);
 INIT_LIST_HEAD(&map->async_list);
 INIT_LIST_HEAD(&map->async_free);
 init_waitqueue_head(&map->async_waitq);

 if (config->read_flag_mask ||
     config->write_flag_mask ||
     config->zero_flag_mask) {
  map->read_flag_mask = config->read_flag_mask;
  map->write_flag_mask = config->write_flag_mask;
 } else if (bus) {
  map->read_flag_mask = bus->read_flag_mask;
 }

 if (!bus) {
  map->reg_read = config->reg_read;
  map->reg_write = config->reg_write;

  map->defer_caching = 0;
  goto skip_format_initialization;
 } else if (!bus->read || !bus->write) {
  map->reg_read = _regmap_bus_reg_read;
  map->reg_write = _regmap_bus_reg_write;

  map->defer_caching = 0;
  goto skip_format_initialization;
 } else {
  map->reg_read = _regmap_bus_read;
  map->reg_update_bits = bus->reg_update_bits;
 }

 reg_endian = regmap_get_reg_endian(bus, config);
 val_endian = regmap_get_val_endian(dev, bus, config);

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
  case 130:
   map->format.format_reg = regmap_format_16_be;
   break;
  case 129:
   map->format.format_reg = regmap_format_16_le;
   break;
  case 128:
   map->format.format_reg = regmap_format_16_native;
   break;
  default:
   goto err_hwlock;
  }
  break;

 case 24:
  if (reg_endian != 130)
   goto err_hwlock;
  map->format.format_reg = regmap_format_24;
  break;

 case 32:
  switch (reg_endian) {
  case 130:
   map->format.format_reg = regmap_format_32_be;
   break;
  case 129:
   map->format.format_reg = regmap_format_32_le;
   break;
  case 128:
   map->format.format_reg = regmap_format_32_native;
   break;
  default:
   goto err_hwlock;
  }
  break;
 default:
  goto err_hwlock;
 }

 if (val_endian == 128)
  map->format.parse_inplace = regmap_parse_inplace_noop;

 switch (config->val_bits) {
 case 8:
  map->format.format_val = regmap_format_8;
  map->format.parse_val = regmap_parse_8;
  map->format.parse_inplace = regmap_parse_inplace_noop;
  break;
 case 16:
  switch (val_endian) {
  case 130:
   map->format.format_val = regmap_format_16_be;
   map->format.parse_val = regmap_parse_16_be;
   map->format.parse_inplace = regmap_parse_16_be_inplace;
   break;
  case 129:
   map->format.format_val = regmap_format_16_le;
   map->format.parse_val = regmap_parse_16_le;
   map->format.parse_inplace = regmap_parse_16_le_inplace;
   break;
  case 128:
   map->format.format_val = regmap_format_16_native;
   map->format.parse_val = regmap_parse_16_native;
   break;
  default:
   goto err_hwlock;
  }
  break;
 case 24:
  if (val_endian != 130)
   goto err_hwlock;
  map->format.format_val = regmap_format_24;
  map->format.parse_val = regmap_parse_24;
  break;
 case 32:
  switch (val_endian) {
  case 130:
   map->format.format_val = regmap_format_32_be;
   map->format.parse_val = regmap_parse_32_be;
   map->format.parse_inplace = regmap_parse_32_be_inplace;
   break;
  case 129:
   map->format.format_val = regmap_format_32_le;
   map->format.parse_val = regmap_parse_32_le;
   map->format.parse_inplace = regmap_parse_32_le_inplace;
   break;
  case 128:
   map->format.format_val = regmap_format_32_native;
   map->format.parse_val = regmap_parse_32_native;
   break;
  default:
   goto err_hwlock;
  }
  break;
 }

 if (map->format.format_write) {
  if ((reg_endian != 130) ||
      (val_endian != 130))
   goto err_hwlock;
  map->use_single_write = 1;
 }

 if (!map->format.format_write &&
     !(map->format.format_reg && map->format.format_val))
  goto err_hwlock;

 map->work_buf = kzalloc(map->format.buf_size, GFP_KERNEL);
 if (map->work_buf == ((void*)0)) {
  ret = -ENOMEM;
  goto err_hwlock;
 }

 if (map->format.format_write) {
  map->defer_caching = 0;
  map->reg_write = _regmap_bus_formatted_write;
 } else if (map->format.format_val) {
  map->defer_caching = 1;
  map->reg_write = _regmap_bus_raw_write;
 }

skip_format_initialization:

 map->range_tree = RB_ROOT;
 for (i = 0; i < config->num_ranges; i++) {
  const struct regmap_range_cfg *range_cfg = &config->ranges[i];
  struct regmap_range_node *new;


  if (range_cfg->range_max < range_cfg->range_min) {
   dev_err(map->dev, "Invalid range %d: %d < %d\n", i,
    range_cfg->range_max, range_cfg->range_min);
   goto err_range;
  }

  if (range_cfg->range_max > map->max_register) {
   dev_err(map->dev, "Invalid range %d: %d > %d\n", i,
    range_cfg->range_max, map->max_register);
   goto err_range;
  }

  if (range_cfg->selector_reg > map->max_register) {
   dev_err(map->dev,
    "Invalid range %d: selector out of map\n", i);
   goto err_range;
  }

  if (range_cfg->window_len == 0) {
   dev_err(map->dev, "Invalid range %d: window_len 0\n",
    i);
   goto err_range;
  }



  for (j = 0; j < config->num_ranges; j++) {
   unsigned sel_reg = config->ranges[j].selector_reg;
   unsigned win_min = config->ranges[j].window_start;
   unsigned win_max = win_min +
        config->ranges[j].window_len - 1;


   if (j == i)
    continue;

   if (range_cfg->range_min <= sel_reg &&
       sel_reg <= range_cfg->range_max) {
    dev_err(map->dev,
     "Range %d: selector for %d in window\n",
     i, j);
    goto err_range;
   }

   if (!(win_max < range_cfg->range_min ||
         win_min > range_cfg->range_max)) {
    dev_err(map->dev,
     "Range %d: window for %d in window\n",
     i, j);
    goto err_range;
   }
  }

  new = kzalloc(sizeof(*new), GFP_KERNEL);
  if (new == ((void*)0)) {
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

  if (!_regmap_range_add(map, new)) {
   dev_err(map->dev, "Failed to add range %d\n", i);
   kfree(new);
   goto err_range;
  }

  if (map->selector_work_buf == ((void*)0)) {
   map->selector_work_buf =
    kzalloc(map->format.buf_size, GFP_KERNEL);
   if (map->selector_work_buf == ((void*)0)) {
    ret = -ENOMEM;
    goto err_range;
   }
  }
 }

 ret = regcache_init(map, config);
 if (ret != 0)
  goto err_range;

 if (dev) {
  ret = regmap_attach_dev(dev, map, config);
  if (ret != 0)
   goto err_regcache;
 } else {
  regmap_debugfs_init(map, config->name);
 }

 return map;

err_regcache:
 regcache_exit(map);
err_range:
 regmap_range_exit(map);
 kfree(map->work_buf);
err_hwlock:
 if (map->hwlock)
  hwspin_lock_free(map->hwlock);
err_name:
 kfree_const(map->name);
err_map:
 kfree(map);
err:
 return ERR_PTR(ret);
}
