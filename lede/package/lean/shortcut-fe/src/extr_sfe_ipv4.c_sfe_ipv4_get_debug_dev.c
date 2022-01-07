
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv4 {int debug_dev; int lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 struct sfe_ipv4 __si ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static ssize_t sfe_ipv4_get_debug_dev(struct device *dev,
          struct device_attribute *attr,
          char *buf)
{
 struct sfe_ipv4 *si = &__si;
 ssize_t count;
 int num;

 spin_lock_bh(&si->lock);
 num = si->debug_dev;
 spin_unlock_bh(&si->lock);

 count = snprintf(buf, (ssize_t)PAGE_SIZE, "%d\n", num);
 return count;
}
