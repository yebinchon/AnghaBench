
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bpf_prog_aux {int verifier_zext; } ;


 int dst_hi ;
 int dst_lo ;
 int emit_ia32_alu_r (int const,int,int const,int ,int ,int,int,int **) ;
 int emit_ia32_mov_i (int ,int ,int,int **) ;
 int src_hi ;
 int src_lo ;

__attribute__((used)) static inline void emit_ia32_alu_r64(const bool is64, const u8 op,
         const u8 dst[], const u8 src[],
         bool dstk, bool sstk,
         u8 **pprog, const struct bpf_prog_aux *aux)
{
 u8 *prog = *pprog;

 emit_ia32_alu_r(is64, 0, op, dst_lo, src_lo, dstk, sstk, &prog);
 if (is64)
  emit_ia32_alu_r(is64, 1, op, dst_hi, src_hi, dstk, sstk,
    &prog);
 else if (!aux->verifier_zext)
  emit_ia32_mov_i(dst_hi, 0, dstk, &prog);
 *pprog = prog;
}
