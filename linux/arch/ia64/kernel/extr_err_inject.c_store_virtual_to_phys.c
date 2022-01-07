
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_attribute {int dummy; } ;
struct device {unsigned int id; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int FOLL_WRITE ;
 int get_user_pages_fast (int ,int,int ,int *) ;
 int ia64_tpa (int ) ;
 int * phys_addr ;
 int printk (char*,int ) ;
 int simple_strtoull (char const*,int *,int) ;

__attribute__((used)) static ssize_t
store_virtual_to_phys(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t size)
{
 unsigned int cpu=dev->id;
 u64 virt_addr=simple_strtoull(buf, ((void*)0), 16);
 int ret;

 ret = get_user_pages_fast(virt_addr, 1, FOLL_WRITE, ((void*)0));
 if (ret<=0) {



  return -EINVAL;
 }

 phys_addr[cpu] = ia64_tpa(virt_addr);
 return size;
}
