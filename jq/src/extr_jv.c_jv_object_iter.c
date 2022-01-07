
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_OBJECT ;
 int assert (int ) ;
 int jv_object_iter_next (int ,int) ;

int jv_object_iter(jv object) {
  assert(JVP_HAS_KIND(object, JV_KIND_OBJECT));
  return jv_object_iter_next(object, -1);
}
