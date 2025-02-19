
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int shift; } ;
struct nullb_device {TYPE_1__ badblocks; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int badblocks_clear (TYPE_1__*,scalar_t__,scalar_t__) ;
 int badblocks_set (TYPE_1__*,scalar_t__,scalar_t__,int) ;
 int cmpxchg (int *,int,int ) ;
 int kfree (char*) ;
 char* kstrndup (char const*,size_t,int ) ;
 int kstrtoull (char*,int ,scalar_t__*) ;
 char* strchr (char*,char) ;
 char* strstrip (char*) ;
 struct nullb_device* to_nullb_device (struct config_item*) ;

__attribute__((used)) static ssize_t nullb_device_badblocks_store(struct config_item *item,
         const char *page, size_t count)
{
 struct nullb_device *t_dev = to_nullb_device(item);
 char *orig, *buf, *tmp;
 u64 start, end;
 int ret;

 orig = kstrndup(page, count, GFP_KERNEL);
 if (!orig)
  return -ENOMEM;

 buf = strstrip(orig);

 ret = -EINVAL;
 if (buf[0] != '+' && buf[0] != '-')
  goto out;
 tmp = strchr(&buf[1], '-');
 if (!tmp)
  goto out;
 *tmp = '\0';
 ret = kstrtoull(buf + 1, 0, &start);
 if (ret)
  goto out;
 ret = kstrtoull(tmp + 1, 0, &end);
 if (ret)
  goto out;
 ret = -EINVAL;
 if (start > end)
  goto out;

 cmpxchg(&t_dev->badblocks.shift, -1, 0);
 if (buf[0] == '+')
  ret = badblocks_set(&t_dev->badblocks, start,
   end - start + 1, 1);
 else
  ret = badblocks_clear(&t_dev->badblocks, start,
   end - start + 1);
 if (ret == 0)
  ret = count;
out:
 kfree(orig);
 return ret;
}
