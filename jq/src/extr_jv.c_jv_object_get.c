
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JVP_HAS_KIND (int ,int ) ;
 int JV_KIND_OBJECT ;
 int JV_KIND_STRING ;
 int assert (int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 int jv_invalid () ;
 int * jvp_object_read (int ,int ) ;

jv jv_object_get(jv object, jv key) {
  assert(JVP_HAS_KIND(object, JV_KIND_OBJECT));
  assert(JVP_HAS_KIND(key, JV_KIND_STRING));
  jv* slot = jvp_object_read(object, key);
  jv val;
  if (slot) {
    val = jv_copy(*slot);
  } else {
    val = jv_invalid();
  }
  jv_free(object);
  jv_free(key);
  return val;
}
