
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proxy_dev {TYPE_1__* chip; } ;
struct TYPE_2__ {int dev; } ;


 int kfree (struct proxy_dev*) ;
 int put_device (int *) ;

__attribute__((used)) static inline void vtpm_proxy_delete_proxy_dev(struct proxy_dev *proxy_dev)
{
 put_device(&proxy_dev->chip->dev);
 kfree(proxy_dev);
}
