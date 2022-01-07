
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; } ;
typedef TYPE_1__ jv ;
struct TYPE_6__ {int * elements; } ;


 TYPE_2__* jvp_object_ptr (TYPE_1__) ;

__attribute__((used)) static int* jvp_object_buckets(jv o) {
  return (int*)(&jvp_object_ptr(o)->elements[o.size]);
}
