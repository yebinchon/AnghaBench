
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jit_ctx {int idx; int epilogue_offset; } ;


 size_t BPF_REG_0 ;
 int G0 ;
 int I7 ;
 int IMMED ;
 int JMPL ;
 int O0 ;
 int RD (int ) ;
 int RESTORE ;
 int RS1 (int ) ;
 int RS2 (int ) ;
 int S13 (int) ;
 int * bpf2sparc ;
 int emit (int,struct jit_ctx*) ;

__attribute__((used)) static void build_epilogue(struct jit_ctx *ctx)
{
 ctx->epilogue_offset = ctx->idx;


 emit(JMPL | IMMED | RS1(I7) | S13(8) | RD(G0), ctx);


 emit(RESTORE | RS1(bpf2sparc[BPF_REG_0]) | RS2(G0) | RD(O0), ctx);
}
