
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t ENODEV ;
 int MKDEV (unsigned int,unsigned int) ;
 int THIS_MODULE ;
 int module_put (int ) ;
 int pkt_setup_dev (int ,int *) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;
 int try_module_get (int ) ;

__attribute__((used)) static ssize_t add_store(struct class *c, struct class_attribute *attr,
    const char *buf, size_t count)
{
 unsigned int major, minor;

 if (sscanf(buf, "%u:%u", &major, &minor) == 2) {

  if (!try_module_get(THIS_MODULE))
   return -ENODEV;

  pkt_setup_dev(MKDEV(major, minor), ((void*)0));

  module_put(THIS_MODULE);

  return count;
 }

 return -EINVAL;
}
