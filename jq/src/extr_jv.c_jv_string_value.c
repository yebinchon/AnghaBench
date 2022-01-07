
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jv ;
struct TYPE_2__ {char const* data; } ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_STRING ;
 int assert (int ) ;
 TYPE_1__* jvp_string_ptr (int ) ;

const char* jv_string_value(jv j) {
  assert(JVP_HAS_KIND(j, JV_KIND_STRING));
  return jvp_string_ptr(j)->data;
}
