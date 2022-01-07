
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_check {int dummy; } ;


 struct attr_check* attr_check_initl (char*,char*,int *) ;
 struct attr_check* merge_attributes ;

__attribute__((used)) static struct attr_check *load_merge_attributes(void)
{
 if (!merge_attributes)
  merge_attributes = attr_check_initl("merge", "conflict-marker-size", ((void*)0));
 return merge_attributes;
}
