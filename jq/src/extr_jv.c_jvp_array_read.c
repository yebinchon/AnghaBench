
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; int * elements; } ;
typedef TYPE_1__ jvp_array ;
typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_ARRAY ;
 int assert (int) ;
 int jvp_array_length (int ) ;
 int jvp_array_offset (int ) ;
 TYPE_1__* jvp_array_ptr (int ) ;

__attribute__((used)) static jv* jvp_array_read(jv a, int i) {
  assert(JVP_HAS_KIND(a, JV_KIND_ARRAY));
  if (i >= 0 && i < jvp_array_length(a)) {
    jvp_array* array = jvp_array_ptr(a);
    assert(i + jvp_array_offset(a) < array->length);
    return &array->elements[i + jvp_array_offset(a)];
  } else {
    return 0;
  }
}
