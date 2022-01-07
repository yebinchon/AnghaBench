
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int reipl_block_ccw ;
 int reipl_generic_loadparm_show (int ,char*) ;

__attribute__((used)) static ssize_t reipl_ccw_loadparm_show(struct kobject *kobj,
           struct kobj_attribute *attr, char *page)
{
 return reipl_generic_loadparm_show(reipl_block_ccw, page);
}
