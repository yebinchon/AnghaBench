
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct component_match {int dummy; } ;


 int __component_match_add (struct device*,struct component_match**,void (*) (struct device*,void*),int (*) (struct device*,void*),int *,void*) ;

void component_match_add_release(struct device *master,
 struct component_match **matchptr,
 void (*release)(struct device *, void *),
 int (*compare)(struct device *, void *), void *compare_data)
{
 __component_match_add(master, matchptr, release, compare, ((void*)0),
         compare_data);
}
