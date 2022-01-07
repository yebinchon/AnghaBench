
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zram {int disksize; int init_lock; int disk; struct zcomp* comp; int compressor; } ;
struct zcomp {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int EBUSY ;
 size_t EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct zcomp*) ;
 int PAGE_ALIGN (int) ;
 int PTR_ERR (struct zcomp*) ;
 int SECTOR_SHIFT ;
 struct zram* dev_to_zram (struct device*) ;
 int down_write (int *) ;
 scalar_t__ init_done (struct zram*) ;
 int memparse (char const*,int *) ;
 int pr_err (char*,int ) ;
 int pr_info (char*) ;
 int revalidate_disk (int ) ;
 int set_capacity (int ,int) ;
 int up_write (int *) ;
 struct zcomp* zcomp_create (int ) ;
 int zram_meta_alloc (struct zram*,int) ;
 int zram_meta_free (struct zram*,int) ;

__attribute__((used)) static ssize_t disksize_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 u64 disksize;
 struct zcomp *comp;
 struct zram *zram = dev_to_zram(dev);
 int err;

 disksize = memparse(buf, ((void*)0));
 if (!disksize)
  return -EINVAL;

 down_write(&zram->init_lock);
 if (init_done(zram)) {
  pr_info("Cannot change disksize for initialized device\n");
  err = -EBUSY;
  goto out_unlock;
 }

 disksize = PAGE_ALIGN(disksize);
 if (!zram_meta_alloc(zram, disksize)) {
  err = -ENOMEM;
  goto out_unlock;
 }

 comp = zcomp_create(zram->compressor);
 if (IS_ERR(comp)) {
  pr_err("Cannot initialise %s compressing backend\n",
    zram->compressor);
  err = PTR_ERR(comp);
  goto out_free_meta;
 }

 zram->comp = comp;
 zram->disksize = disksize;
 set_capacity(zram->disk, zram->disksize >> SECTOR_SHIFT);

 revalidate_disk(zram->disk);
 up_write(&zram->init_lock);

 return len;

out_free_meta:
 zram_meta_free(zram, disksize);
out_unlock:
 up_write(&zram->init_lock);
 return err;
}
