
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ jv ;


 int JVP_HAS_KIND (TYPE_1__,int ) ;
 int JV_KIND_OBJECT ;
 int assert (int ) ;

__attribute__((used)) static uint32_t jvp_object_mask(jv o) {
  assert(JVP_HAS_KIND(o, JV_KIND_OBJECT));
  return (o.size * 2) - 1;
}
