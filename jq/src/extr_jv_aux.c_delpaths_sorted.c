
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 scalar_t__ JV_KIND_NULL ;
 int assert (int) ;
 int jv_array () ;
 int jv_array_append (int ,int ) ;
 int jv_array_get (int ,int) ;
 int jv_array_length (int ) ;
 int jv_array_slice (int ,int,int) ;
 int jv_copy (int ) ;
 int jv_dels (int ,int ) ;
 scalar_t__ jv_equal (int ,int ) ;
 int jv_free (int ) ;
 int jv_get (int ,int ) ;
 scalar_t__ jv_get_kind (int ) ;
 scalar_t__ jv_is_valid (int ) ;
 int jv_set (int ,int ,int ) ;

__attribute__((used)) static jv delpaths_sorted(jv object, jv paths, int start) {
  jv delkeys = jv_array();
  for (int i=0; i<jv_array_length(jv_copy(paths));) {
    int j = i;
    assert(jv_array_length(jv_array_get(jv_copy(paths), i)) > start);
    int delkey = jv_array_length(jv_array_get(jv_copy(paths), i)) == start + 1;
    jv key = jv_array_get(jv_array_get(jv_copy(paths), i), start);
    while (j < jv_array_length(jv_copy(paths)) &&
           jv_equal(jv_copy(key), jv_array_get(jv_array_get(jv_copy(paths), j), start)))
      j++;

    if (delkey) {

      delkeys = jv_array_append(delkeys, key);
    } else {

      jv subobject = jv_get(jv_copy(object), jv_copy(key));
      if (!jv_is_valid(subobject)) {
        jv_free(key);
        jv_free(object);
        object = subobject;
        break;
      } else if (jv_get_kind(subobject) == JV_KIND_NULL) {
        jv_free(key);
        jv_free(subobject);
      } else {
        jv newsubobject = delpaths_sorted(subobject, jv_array_slice(jv_copy(paths), i, j), start+1);
        if (!jv_is_valid(newsubobject)) {
          jv_free(key);
          jv_free(object);
          object = newsubobject;
          break;
        }
        object = jv_set(object, key, newsubobject);
      }
      if (!jv_is_valid(object)) break;
    }
    i = j;
  }
  jv_free(paths);
  if (jv_is_valid(object))
    object = jv_dels(object, delkeys);
  else
    jv_free(delkeys);
  return object;
}
