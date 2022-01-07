
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locfile {int dummy; } ;
typedef int jv ;
typedef int jq_state ;
typedef int block ;


 scalar_t__ JV_KIND_NULL ;
 int block_free (int ) ;
 int block_module_meta (int ) ;
 int block_take_imports (int *) ;
 int find_lib (int *,int ,int ,char*,int ,int ) ;
 int jq_get_jq_origin (int *) ;
 int jq_get_lib_dirs (int *) ;
 int jq_parse_library (struct locfile*,int *) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 scalar_t__ jv_is_valid (int ) ;
 int jv_load_file (int ,int) ;
 int jv_null () ;
 int jv_object () ;
 int jv_object_set (int ,int ,int ) ;
 int jv_string (char*) ;
 int jv_string_length_bytes (int ) ;
 int jv_string_value (int ) ;
 int locfile_free (struct locfile*) ;
 struct locfile* locfile_init (int *,int ,int ,int ) ;
 int validate_relpath (int ) ;

jv load_module_meta(jq_state *jq, jv mod_relpath) {

  jv lib_path = find_lib(jq, validate_relpath(mod_relpath), jq_get_lib_dirs(jq), ".jq", jq_get_jq_origin(jq), jv_null());
  if (!jv_is_valid(lib_path))
    return lib_path;
  jv meta = jv_null();
  jv data = jv_load_file(jv_string_value(lib_path), 1);
  if (jv_is_valid(data)) {
    block program;
    struct locfile* src = locfile_init(jq, jv_string_value(lib_path), jv_string_value(data), jv_string_length_bytes(jv_copy(data)));
    int nerrors = jq_parse_library(src, &program);
    if (nerrors == 0) {
      meta = block_module_meta(program);
      if (jv_get_kind(meta) == JV_KIND_NULL)
        meta = jv_object();
      meta = jv_object_set(meta, jv_string("deps"), block_take_imports(&program));
    }
    locfile_free(src);
    block_free(program);
  }
  jv_free(lib_path);
  jv_free(data);
  return meta;
}
