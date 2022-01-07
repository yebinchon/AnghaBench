
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct hwicap_driver_config {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int hwicap_of_probe(struct platform_device *op,
      const struct hwicap_driver_config *config)
{
 return -EINVAL;
}
