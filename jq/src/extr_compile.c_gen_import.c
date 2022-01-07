
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jv ;
struct TYPE_5__ {int constant; } ;
struct TYPE_6__ {TYPE_1__ imm; } ;
typedef TYPE_2__ inst ;
typedef int block ;


 int DEPS ;
 int inst_block (TYPE_2__*) ;
 TYPE_2__* inst_new (int ) ;
 int jv_false () ;
 int jv_object () ;
 int jv_object_set (int ,int ,int ) ;
 int jv_string (char const*) ;
 int jv_true () ;

block gen_import(const char* name, const char* as, int is_data) {
  inst* i = inst_new(DEPS);
  jv meta = jv_object();
  if (as != ((void*)0))
    meta = jv_object_set(meta, jv_string("as"), jv_string(as));
  meta = jv_object_set(meta, jv_string("is_data"), is_data ? jv_true() : jv_false());
  meta = jv_object_set(meta, jv_string("relpath"), jv_string(name));
  i->imm.constant = meta;
  return inst_block(i);
}
