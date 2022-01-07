
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int MKDEV (unsigned int,unsigned int) ;
 int pkt_remove_dev (int ) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;

__attribute__((used)) static ssize_t remove_store(struct class *c, struct class_attribute *attr,
       const char *buf, size_t count)
{
 unsigned int major, minor;
 if (sscanf(buf, "%u:%u", &major, &minor) == 2) {
  pkt_remove_dev(MKDEV(major, minor));
  return count;
 }
 return -EINVAL;
}
