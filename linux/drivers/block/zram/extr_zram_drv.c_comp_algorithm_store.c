
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int init_lock; int compressor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int compressor ;


 int ARRAY_SIZE (int ) ;
 size_t EBUSY ;
 size_t EINVAL ;
 struct zram* dev_to_zram (struct device*) ;
 int down_write (int *) ;
 scalar_t__ init_done (struct zram*) ;
 int pr_info (char*) ;
 int strcpy (int ,char*) ;
 int strlcpy (char*,char const*,int) ;
 size_t strlen (char*) ;
 int up_write (int *) ;
 int zcomp_available_algorithm (char*) ;

__attribute__((used)) static ssize_t comp_algorithm_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 struct zram *zram = dev_to_zram(dev);
 char compressor[ARRAY_SIZE(zram->compressor)];
 size_t sz;

 strlcpy(compressor, buf, sizeof(compressor));

 sz = strlen(compressor);
 if (sz > 0 && compressor[sz - 1] == '\n')
  compressor[sz - 1] = 0x00;

 if (!zcomp_available_algorithm(compressor))
  return -EINVAL;

 down_write(&zram->init_lock);
 if (init_done(zram)) {
  up_write(&zram->init_lock);
  pr_info("Can't change algorithm for initialized device\n");
  return -EBUSY;
 }

 strcpy(zram->compressor, compressor);
 up_write(&zram->init_lock);
 return len;
}
