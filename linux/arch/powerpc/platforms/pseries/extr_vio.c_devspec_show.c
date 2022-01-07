
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,struct device_node*) ;

__attribute__((used)) static ssize_t devspec_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct device_node *of_node = dev->of_node;

 return sprintf(buf, "%pOF\n", of_node);
}
