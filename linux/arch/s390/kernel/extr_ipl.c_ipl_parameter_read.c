
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;


 TYPE_2__ ipl_block ;
 int memory_read_from_buffer (char*,size_t,int *,TYPE_2__*,int ) ;

__attribute__((used)) static ssize_t ipl_parameter_read(struct file *filp, struct kobject *kobj,
      struct bin_attribute *attr, char *buf,
      loff_t off, size_t count)
{
 return memory_read_from_buffer(buf, count, &off, &ipl_block,
           ipl_block.hdr.len);
}
