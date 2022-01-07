
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct class_attribute {int dummy; } ;
struct class {int dummy; } ;
typedef size_t ssize_t ;


 int __fw_fallback_set_timeout (int) ;
 int simple_strtol (char const*,int *,int) ;

__attribute__((used)) static ssize_t timeout_store(struct class *class, struct class_attribute *attr,
        const char *buf, size_t count)
{
 int tmp_loading_timeout = simple_strtol(buf, ((void*)0), 10);

 if (tmp_loading_timeout < 0)
  tmp_loading_timeout = 0;

 __fw_fallback_set_timeout(tmp_loading_timeout);

 return count;
}
