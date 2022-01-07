
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {void const* of_node; } ;



int device_match_of_node(struct device *dev, const void *np)
{
 return dev->of_node == np;
}
