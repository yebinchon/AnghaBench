
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int ) ;
 int uv_partition_coherence_id () ;

__attribute__((used)) static ssize_t coherence_id_show(struct kobject *kobj,
   struct kobj_attribute *attr, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%ld\n", uv_partition_coherence_id());
}
