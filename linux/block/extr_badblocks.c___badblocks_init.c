
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct badblocks {int shift; int lock; int page; scalar_t__ count; struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int devm_kzalloc (struct device*,int ,int ) ;
 int kzalloc (int ,int ) ;
 int seqlock_init (int *) ;

__attribute__((used)) static int __badblocks_init(struct device *dev, struct badblocks *bb,
  int enable)
{
 bb->dev = dev;
 bb->count = 0;
 if (enable)
  bb->shift = 0;
 else
  bb->shift = -1;
 if (dev)
  bb->page = devm_kzalloc(dev, PAGE_SIZE, GFP_KERNEL);
 else
  bb->page = kzalloc(PAGE_SIZE, GFP_KERNEL);
 if (!bb->page) {
  bb->shift = -1;
  return -ENOMEM;
 }
 seqlock_init(&bb->lock);

 return 0;
}
