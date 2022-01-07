
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zram {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ private_data; } ;


 TYPE_1__* dev_to_disk (struct device*) ;

__attribute__((used)) static inline struct zram *dev_to_zram(struct device *dev)
{
 return (struct zram *)dev_to_disk(dev)->private_data;
}
