
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int reipl_block_fcp ;
 int reipl_generic_loadparm_store (int ,char const*,size_t) ;

__attribute__((used)) static ssize_t reipl_fcp_loadparm_store(struct kobject *kobj,
     struct kobj_attribute *attr,
     const char *buf, size_t len)
{
 return reipl_generic_loadparm_store(reipl_block_fcp, buf, len);
}
