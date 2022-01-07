
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class_instance; int class_class; } ;
typedef TYPE_1__ trayclient ;


 int strcasecmp_nullable (int ,int ) ;

__attribute__((used)) static int reorder_trayclients_cmp(const void *_a, const void *_b) {
    trayclient *a = *((trayclient **)_a);
    trayclient *b = *((trayclient **)_b);

    int result = strcasecmp_nullable(a->class_class, b->class_class);
    return result != 0 ? result : strcasecmp_nullable(a->class_instance, b->class_instance);
}
