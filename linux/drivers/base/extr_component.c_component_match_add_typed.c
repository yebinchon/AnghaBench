
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct component_match {int dummy; } ;


 int __component_match_add (struct device*,struct component_match**,int *,int *,int (*) (struct device*,int,void*),void*) ;

void component_match_add_typed(struct device *master,
 struct component_match **matchptr,
 int (*compare_typed)(struct device *, int, void *), void *compare_data)
{
 __component_match_add(master, matchptr, ((void*)0), ((void*)0), compare_typed,
         compare_data);
}
