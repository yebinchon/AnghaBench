
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_3__ {unsigned int scp_data_len; int scp_data; } ;
struct TYPE_4__ {TYPE_1__ fcp; } ;


 TYPE_2__ ipl_block ;
 int memory_read_from_buffer (char*,size_t,int *,void*,unsigned int) ;

__attribute__((used)) static ssize_t ipl_scp_data_read(struct file *filp, struct kobject *kobj,
     struct bin_attribute *attr, char *buf,
     loff_t off, size_t count)
{
 unsigned int size = ipl_block.fcp.scp_data_len;
 void *scp_data = &ipl_block.fcp.scp_data;

 return memory_read_from_buffer(buf, count, &off, scp_data, size);
}
