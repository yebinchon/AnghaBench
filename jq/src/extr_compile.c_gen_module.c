
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int constant; } ;
struct TYPE_6__ {TYPE_1__ imm; } ;
typedef TYPE_2__ inst ;
typedef int block ;


 scalar_t__ JV_KIND_OBJECT ;
 int MODULEMETA ;
 int block_const (int ) ;
 int block_free (int ) ;
 int inst_block (TYPE_2__*) ;
 TYPE_2__* inst_new (int ) ;
 scalar_t__ jv_get_kind (int ) ;
 int jv_object () ;
 int jv_object_set (int ,int ,int ) ;
 int jv_string (char*) ;

block gen_module(block metadata) {
  inst* i = inst_new(MODULEMETA);
  i->imm.constant = block_const(metadata);
  if (jv_get_kind(i->imm.constant) != JV_KIND_OBJECT)
    i->imm.constant = jv_object_set(jv_object(), jv_string("metadata"), i->imm.constant);
  block_free(metadata);
  return inst_block(i);
}
