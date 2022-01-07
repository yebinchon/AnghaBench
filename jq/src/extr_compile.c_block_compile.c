
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol_table {int dummy; } ;
struct locfile {int dummy; } ;
struct cfunction {int dummy; } ;
struct bytecode {TYPE_1__* globals; int debuginfo; scalar_t__ nclosures; scalar_t__ parent; } ;
typedef int jv ;
typedef int block ;
struct TYPE_2__ {int ncfunctions; int cfunc_names; int cfunctions; } ;


 int assert (int) ;
 int bytecode_free (struct bytecode*) ;
 int compile (struct bytecode*,int ,struct locfile*,int ,int *) ;
 int count_cfunctions (int ) ;
 int jv_array () ;
 int jv_free (int ) ;
 int jv_invalid () ;
 void* jv_mem_alloc (int) ;
 int jv_mem_calloc (int,int) ;
 int jv_null () ;
 int jv_object () ;
 int jv_object_set (int ,int ,int ) ;
 int jv_string (char*) ;

int block_compile(block b, struct bytecode** out, struct locfile* lf, jv args) {
  struct bytecode* bc = jv_mem_alloc(sizeof(struct bytecode));
  bc->parent = 0;
  bc->nclosures = 0;
  bc->globals = jv_mem_alloc(sizeof(struct symbol_table));
  int ncfunc = count_cfunctions(b);
  bc->globals->ncfunctions = 0;
  bc->globals->cfunctions = jv_mem_calloc(sizeof(struct cfunction), ncfunc);
  bc->globals->cfunc_names = jv_array();
  bc->debuginfo = jv_object_set(jv_object(), jv_string("name"), jv_null());
  jv env = jv_invalid();
  int nerrors = compile(bc, b, lf, args, &env);
  jv_free(args);
  jv_free(env);
  assert(bc->globals->ncfunctions == ncfunc);
  if (nerrors > 0) {
    bytecode_free(bc);
    *out = 0;
  } else {
    *out = bc;
  }
  return nerrors;
}
