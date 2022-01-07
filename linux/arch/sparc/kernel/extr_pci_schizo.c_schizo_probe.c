
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct of_device_id {scalar_t__ data; } ;


 int EINVAL ;
 int __schizo_init (struct platform_device*,unsigned long) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int schizo_match ;

__attribute__((used)) static int schizo_probe(struct platform_device *op)
{
 const struct of_device_id *match;

 match = of_match_device(schizo_match, &op->dev);
 if (!match)
  return -EINVAL;
 return __schizo_init(op, (unsigned long)match->data);
}
