
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recurse_struct {void* obj; int (* fn ) (struct device*,void*) ;} ;


 int descend_children ;
 int device_for_each_child (int *,struct recurse_struct*,int ) ;
 int root ;

__attribute__((used)) static int for_each_padev(int (*fn)(struct device *, void *), void * data)
{
 struct recurse_struct recurse_data = {
  .obj = data,
  .fn = fn,
 };
 return device_for_each_child(&root, &recurse_data, descend_children);
}
