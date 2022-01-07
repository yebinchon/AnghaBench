
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
typedef TYPE_1__ jv ;


 int JVP_HAS_KIND (TYPE_1__,int ) ;
 int JV_KIND_ARRAY ;
 int assert (int ) ;

__attribute__((used)) static int jvp_array_length(jv a) {
  assert(JVP_HAS_KIND(a, JV_KIND_ARRAY));
  return a.size;
}
