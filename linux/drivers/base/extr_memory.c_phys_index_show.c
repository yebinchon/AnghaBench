
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_block {unsigned long start_section_nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 unsigned long sections_per_block ;
 int sprintf (char*,char*,unsigned long) ;
 struct memory_block* to_memory_block (struct device*) ;

__attribute__((used)) static ssize_t phys_index_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct memory_block *mem = to_memory_block(dev);
 unsigned long phys_index;

 phys_index = mem->start_section_nr / sections_per_block;
 return sprintf(buf, "%08lx\n", phys_index);
}
