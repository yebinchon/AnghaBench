
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct af_alg_type {int owner; int (* release ) (void*) ;} ;


 int module_put (int ) ;
 int stub1 (void*) ;

__attribute__((used)) static void alg_do_release(const struct af_alg_type *type, void *private)
{
 if (!type)
  return;

 type->release(private);
 module_put(type->owner);
}
