
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int attrs; scalar_t__ bc; } ;
typedef TYPE_1__ jq_state ;


 int bytecode_free (scalar_t__) ;
 int jq_reset (TYPE_1__*) ;
 int jv_free (int ) ;
 int jv_mem_free (TYPE_1__*) ;

void jq_teardown(jq_state **jq) {
  jq_state *old_jq = *jq;
  if (old_jq == ((void*)0))
    return;
  *jq = ((void*)0);

  jq_reset(old_jq);
  bytecode_free(old_jq->bc);
  old_jq->bc = 0;
  jv_free(old_jq->attrs);

  jv_mem_free(old_jq);
}
