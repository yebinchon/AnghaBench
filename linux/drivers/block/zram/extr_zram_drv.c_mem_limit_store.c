
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zram {int limit_pages; int init_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int PAGE_ALIGN (int ) ;
 int PAGE_SHIFT ;
 struct zram* dev_to_zram (struct device*) ;
 int down_write (int *) ;
 int memparse (char const*,char**) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t mem_limit_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 u64 limit;
 char *tmp;
 struct zram *zram = dev_to_zram(dev);

 limit = memparse(buf, &tmp);
 if (buf == tmp)
  return -EINVAL;

 down_write(&zram->init_lock);
 zram->limit_pages = PAGE_ALIGN(limit) >> PAGE_SHIFT;
 up_write(&zram->init_lock);

 return len;
}
