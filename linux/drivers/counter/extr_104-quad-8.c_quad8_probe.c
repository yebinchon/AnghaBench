
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct quad8_iio* priv; void* num_signals; void* signals; void* num_counts; void* counts; int * ops; struct device* parent; void* name; } ;
struct quad8_iio {int base; TYPE_2__ counter; } ;
struct TYPE_3__ {struct device* parent; } ;
struct iio_dev {TYPE_1__ dev; void* name; void* channels; void* num_channels; int modes; int * info; } ;
struct device {int dummy; } ;


 void* ARRAY_SIZE (void*) ;
 int EBUSY ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int QUAD8_CHAN_OP_ENABLE_COUNTERS ;
 int QUAD8_CHAN_OP_RESET_COUNTERS ;
 int QUAD8_CTR_CMR ;
 int QUAD8_CTR_IDR ;
 int QUAD8_CTR_IOR ;
 int QUAD8_CTR_RLD ;
 scalar_t__ QUAD8_EXTENT ;
 int QUAD8_NUM_COUNTERS ;
 int QUAD8_REG_CHAN_OP ;
 int QUAD8_RLD_RESET_BP ;
 int QUAD8_RLD_RESET_E ;
 int QUAD8_RLD_RESET_FLAGS ;
 int* base ;
 int dev_err (struct device*,char*,int,scalar_t__) ;
 void* dev_name (struct device*) ;
 int devm_counter_register (struct device*,TYPE_2__*) ;
 struct iio_dev* devm_iio_device_alloc (struct device*,int) ;
 int devm_iio_device_register (struct device*,struct iio_dev*) ;
 int devm_request_region (struct device*,int,scalar_t__,void*) ;
 struct quad8_iio* iio_priv (struct iio_dev*) ;
 int outb (int,int) ;
 void* quad8_channels ;
 void* quad8_counts ;
 int quad8_info ;
 int quad8_ops ;
 void* quad8_signals ;

__attribute__((used)) static int quad8_probe(struct device *dev, unsigned int id)
{
 struct iio_dev *indio_dev;
 struct quad8_iio *quad8iio;
 int i, j;
 unsigned int base_offset;
 int err;

 if (!devm_request_region(dev, base[id], QUAD8_EXTENT, dev_name(dev))) {
  dev_err(dev, "Unable to lock port addresses (0x%X-0x%X)\n",
   base[id], base[id] + QUAD8_EXTENT);
  return -EBUSY;
 }


 indio_dev = devm_iio_device_alloc(dev, sizeof(*quad8iio));
 if (!indio_dev)
  return -ENOMEM;


 indio_dev->info = &quad8_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->num_channels = ARRAY_SIZE(quad8_channels);
 indio_dev->channels = quad8_channels;
 indio_dev->name = dev_name(dev);
 indio_dev->dev.parent = dev;


 quad8iio = iio_priv(indio_dev);
 quad8iio->counter.name = dev_name(dev);
 quad8iio->counter.parent = dev;
 quad8iio->counter.ops = &quad8_ops;
 quad8iio->counter.counts = quad8_counts;
 quad8iio->counter.num_counts = ARRAY_SIZE(quad8_counts);
 quad8iio->counter.signals = quad8_signals;
 quad8iio->counter.num_signals = ARRAY_SIZE(quad8_signals);
 quad8iio->counter.priv = quad8iio;
 quad8iio->base = base[id];


 outb(QUAD8_CHAN_OP_RESET_COUNTERS, base[id] + QUAD8_REG_CHAN_OP);

 for (i = 0; i < QUAD8_NUM_COUNTERS; i++) {
  base_offset = base[id] + 2 * i;

  outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_BP, base_offset + 1);

  for (j = 0; j < 3; j++)
   outb(0x00, base_offset);

  outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_FLAGS, base_offset + 1);

  outb(QUAD8_CTR_RLD | QUAD8_RLD_RESET_E, base_offset + 1);

  outb(QUAD8_CTR_CMR, base_offset + 1);

  outb(QUAD8_CTR_IOR, base_offset + 1);

  outb(QUAD8_CTR_IDR, base_offset + 1);
 }

 outb(QUAD8_CHAN_OP_ENABLE_COUNTERS, base[id] + QUAD8_REG_CHAN_OP);


 err = devm_iio_device_register(dev, indio_dev);
 if (err)
  return err;


 return devm_counter_register(dev, &quad8iio->counter);
}
