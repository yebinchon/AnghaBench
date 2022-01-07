
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int id; } ;
typedef int ssize_t ;


 int read_mmustat_enable ;
 int sprintf (char*,char*,long) ;
 long work_on_cpu (int ,int ,int *) ;

__attribute__((used)) static ssize_t show_mmustat_enable(struct device *s,
    struct device_attribute *attr, char *buf)
{
 long val = work_on_cpu(s->id, read_mmustat_enable, ((void*)0));

 return sprintf(buf, "%lx\n", val);
}
