
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ jvp_string ;
typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 int assert (int ) ;
 scalar_t__ jvp_string_length (TYPE_1__*) ;
 TYPE_1__* jvp_string_ptr (int ) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int jvp_string_equal(jv a, jv b) {
  assert(JVP_HAS_KIND(a, JV_KIND_STRING));
  assert(JVP_HAS_KIND(b, JV_KIND_STRING));
  jvp_string* stra = jvp_string_ptr(a);
  jvp_string* strb = jvp_string_ptr(b);
  if (jvp_string_length(stra) != jvp_string_length(strb)) return 0;
  return memcmp(stra->data, strb->data, jvp_string_length(stra)) == 0;
}
