
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
struct lib_loading_state {size_t ct; int * defs; int * names; } ;
typedef int jv ;
typedef int jq_state ;
typedef int block ;


 scalar_t__ JV_KIND_STRING ;
 scalar_t__ JV_KIND_TRUE ;
 int OP_IS_CALL_PSEUDO ;
 int assert (int) ;
 int block_bind_library (int ,int ,int ,char const*) ;
 int block_take_imports (int *) ;
 int default_search (int *,int ) ;
 int find_lib (int *,int ,int ,char*,int ,int ) ;
 int gen_noop () ;
 int jq_report_error (int *,int ) ;
 int jv_array_get (int ,int) ;
 int jv_array_length (int ) ;
 int jv_copy (int ) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_invalid_get_msg (int ) ;
 int jv_is_valid (int ) ;
 int jv_object_get (int ,int ) ;
 int jv_string (char*) ;
 int jv_string_fmt (char*,char*) ;
 char* jv_string_value (int ) ;
 scalar_t__ load_library (int *,int ,int,int,int,char const*,int *,struct lib_loading_state*) ;
 scalar_t__ strcmp (int ,char*) ;
 int validate_relpath (int ) ;

__attribute__((used)) static int process_dependencies(jq_state *jq, jv jq_origin, jv lib_origin, block *src_block, struct lib_loading_state *lib_state) {
  jv deps = block_take_imports(src_block);
  block bk = *src_block;
  int nerrors = 0;


  for (int i = jv_array_length(jv_copy(deps)); i > 0; ) {
    i--;
    jv dep = jv_array_get(jv_copy(deps), i);

    const char *as_str = ((void*)0);
    int is_data = jv_get_kind(jv_object_get(jv_copy(dep), jv_string("is_data"))) == JV_KIND_TRUE;
    int raw = 0;
    jv v = jv_object_get(jv_copy(dep), jv_string("raw"));
    if (jv_get_kind(v) == JV_KIND_TRUE)
      raw = 1;
    int optional = 0;
    if (jv_get_kind(jv_object_get(jv_copy(dep), jv_string("optional"))) == JV_KIND_TRUE)
      optional = 1;
    jv_free(v);
    jv relpath = validate_relpath(jv_object_get(jv_copy(dep), jv_string("relpath")));
    jv as = jv_object_get(jv_copy(dep), jv_string("as"));
    assert(!jv_is_valid(as) || jv_get_kind(as) == JV_KIND_STRING);
    if (jv_get_kind(as) == JV_KIND_STRING)
      as_str = jv_string_value(as);
    jv search = default_search(jq, jv_object_get(dep, jv_string("search")));



    jv resolved = find_lib(jq, relpath, search, is_data ? ".json" : ".jq", jv_copy(jq_origin), jv_copy(lib_origin));

    if (!jv_is_valid(resolved)) {
      jv_free(as);
      if (optional) {
        jv_free(resolved);
        continue;
      }
      jv emsg = jv_invalid_get_msg(resolved);
      jq_report_error(jq, jv_string_fmt("jq: error: %s\n",jv_string_value(emsg)));
      jv_free(emsg);
      jv_free(deps);
      jv_free(jq_origin);
      jv_free(lib_origin);
      return 1;
    }

    if (is_data) {

      block dep_def_block;
      nerrors += load_library(jq, resolved, is_data, raw, optional, as_str, &dep_def_block, lib_state);
      if (nerrors == 0) {

        bk = block_bind_library(dep_def_block, bk, OP_IS_CALL_PSEUDO, as_str);
        bk = block_bind_library(dep_def_block, bk, OP_IS_CALL_PSEUDO, ((void*)0));
      }
    } else {
      uint64_t state_idx = 0;
      for (; state_idx < lib_state->ct; ++state_idx) {
        if (strcmp(lib_state->names[state_idx],jv_string_value(resolved)) == 0)
          break;
      }

      if (state_idx < lib_state->ct) {
        jv_free(resolved);

        bk = block_bind_library(lib_state->defs[state_idx], bk, OP_IS_CALL_PSEUDO, as_str);
      } else {
        block dep_def_block = gen_noop();
        nerrors += load_library(jq, resolved, is_data, raw, optional, as_str, &dep_def_block, lib_state);

        if (nerrors == 0) {

          bk = block_bind_library(dep_def_block, bk, OP_IS_CALL_PSEUDO, as_str);
        }
      }
    }

    jv_free(as);
  }
  jv_free(lib_origin);
  jv_free(jq_origin);
  jv_free(deps);
  return nerrors;
}
