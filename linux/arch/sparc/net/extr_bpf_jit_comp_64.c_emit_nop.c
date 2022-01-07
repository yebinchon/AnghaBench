
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int dummy; } ;


 int G0 ;
 int SETHI (int ,int ) ;
 int emit (int ,struct jit_ctx*) ;

__attribute__((used)) static void emit_nop(struct jit_ctx *ctx)
{
 emit(SETHI(0, G0), ctx);
}
