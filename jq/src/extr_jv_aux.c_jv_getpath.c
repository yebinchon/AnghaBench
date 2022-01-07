
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 scalar_t__ JV_KIND_ARRAY ;
 int jv_array_get (int ,int ) ;
 scalar_t__ jv_array_length (int ) ;
 int jv_array_slice (int ,int,scalar_t__) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 int jv_get (int ,int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_invalid_with_msg (int ) ;
 int jv_is_valid (int ) ;
 int jv_string (char*) ;

jv jv_getpath(jv root, jv path) {
  if (jv_get_kind(path) != JV_KIND_ARRAY) {
    jv_free(root);
    jv_free(path);
    return jv_invalid_with_msg(jv_string("Path must be specified as an array"));
  }
  if (!jv_is_valid(root)) {
    jv_free(path);
    return root;
  }
  if (jv_array_length(jv_copy(path)) == 0) {
    jv_free(path);
    return root;
  }
  jv pathcurr = jv_array_get(jv_copy(path), 0);
  jv pathrest = jv_array_slice(path, 1, jv_array_length(jv_copy(path)));
  return jv_getpath(jv_get(root, pathcurr), pathrest);
}
