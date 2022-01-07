
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct runtime_instr_cb {int rla; int s; int k; int ps; int pc; int v; int key; } ;


 int PAGE_DEFAULT_KEY ;

__attribute__((used)) static void init_runtime_instr_cb(struct runtime_instr_cb *cb)
{
 cb->rla = 0xfff;
 cb->s = 1;
 cb->k = 1;
 cb->ps = 1;
 cb->pc = 1;
 cb->key = PAGE_DEFAULT_KEY;
 cb->v = 1;
}
