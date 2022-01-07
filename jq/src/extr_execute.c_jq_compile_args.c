
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct locfile {int dummy; } ;
typedef int jv ;
struct TYPE_8__ {int * bc; int nomem_handler_data; int nomem_handler; } ;
typedef TYPE_1__ jq_state ;
typedef int block ;


 scalar_t__ JV_KIND_ARRAY ;
 scalar_t__ JV_KIND_OBJECT ;
 int args2obj (int ) ;
 int assert (int) ;
 int block_compile (int ,int **,struct locfile*,int ) ;
 int builtins_bind (TYPE_1__*,int *) ;
 int bytecode_free (int *) ;
 int jq_report_error (TYPE_1__*,int ) ;
 int jq_reset (TYPE_1__*) ;
 int jv_free (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_nomem_handler (int ,int ) ;
 int jv_string_fmt (char*,int,char*) ;
 int load_program (TYPE_1__*,struct locfile*,int *) ;
 int locfile_free (struct locfile*) ;
 struct locfile* locfile_init (TYPE_1__*,char*,char const*,int ) ;
 int * optimize (int *) ;
 int strlen (char const*) ;

int jq_compile_args(jq_state *jq, const char* str, jv args) {
  jv_nomem_handler(jq->nomem_handler, jq->nomem_handler_data);
  assert(jv_get_kind(args) == JV_KIND_ARRAY || jv_get_kind(args) == JV_KIND_OBJECT);
  struct locfile* locations;
  locations = locfile_init(jq, "<top-level>", str, strlen(str));
  block program;
  jq_reset(jq);
  if (jq->bc) {
    bytecode_free(jq->bc);
    jq->bc = 0;
  }
  int nerrors = load_program(jq, locations, &program);
  if (nerrors == 0) {
    nerrors = builtins_bind(jq, &program);
    if (nerrors == 0) {
      nerrors = block_compile(program, &jq->bc, locations, args = args2obj(args));
    }
  } else
    jv_free(args);
  if (nerrors)
    jq_report_error(jq, jv_string_fmt("jq: %d compile %s", nerrors, nerrors > 1 ? "errors" : "error"));
  if (jq->bc)
    jq->bc = optimize(jq->bc);
  locfile_free(locations);
  return jq->bc != ((void*)0);
}
