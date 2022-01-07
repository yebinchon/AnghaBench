
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_OBJECT ;
 int JV_KIND_STRING ;
 int assert (int ) ;
 int jv_free (int ) ;
 int * jvp_object_write (int *,int ) ;

jv jv_object_set(jv object, jv key, jv value) {
  assert(JVP_HAS_KIND(object, JV_KIND_OBJECT));
  assert(JVP_HAS_KIND(key, JV_KIND_STRING));

  jv* slot = jvp_object_write(&object, key);
  jv_free(*slot);
  *slot = value;
  return object;
}
