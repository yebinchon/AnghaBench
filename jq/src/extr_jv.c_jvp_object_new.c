
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct object_slot {int dummy; } ;
struct TYPE_10__ {int count; } ;
struct TYPE_11__ {TYPE_3__ refcnt; TYPE_1__* elements; scalar_t__ next_free; } ;
typedef TYPE_4__ jvp_object ;
struct TYPE_9__ {TYPE_3__* member_0; } ;
struct TYPE_12__ {int member_3; TYPE_2__ member_4; int member_2; int member_1; int member_0; } ;
typedef TYPE_5__ jv ;
struct TYPE_8__ {int next; void* value; scalar_t__ hash; void* string; } ;


 int JVP_FLAGS_OBJECT ;
 void* JV_NULL ;
 int assert (int) ;
 TYPE_4__* jv_mem_alloc (int) ;

__attribute__((used)) static jv jvp_object_new(int size) {



  assert(size > 0 && (size & (size - 1)) == 0);

  jvp_object* obj = jv_mem_alloc(sizeof(jvp_object) +
                                 sizeof(struct object_slot) * size +
                                 sizeof(int) * (size * 2));
  obj->refcnt.count = 1;
  for (int i=0; i<size; i++) {
    obj->elements[i].next = i - 1;
    obj->elements[i].string = JV_NULL;
    obj->elements[i].hash = 0;
    obj->elements[i].value = JV_NULL;
  }
  obj->next_free = 0;
  int* hashbuckets = (int*)(&obj->elements[size]);
  for (int i=0; i<size*2; i++) {
    hashbuckets[i] = -1;
  }
  jv r = {JVP_FLAGS_OBJECT, 0, 0, size, {&obj->refcnt}};
  return r;
}
