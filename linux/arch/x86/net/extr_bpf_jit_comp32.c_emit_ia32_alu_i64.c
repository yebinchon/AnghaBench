
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bpf_prog_aux {int verifier_zext; } ;


 int dst_hi ;
 int dst_lo ;
 int emit_ia32_alu_i (int const,int,int const,int ,int const,int,int **) ;
 int emit_ia32_mov_i (int ,int ,int,int **) ;

__attribute__((used)) static inline void emit_ia32_alu_i64(const bool is64, const u8 op,
         const u8 dst[], const u32 val,
         bool dstk, u8 **pprog,
         const struct bpf_prog_aux *aux)
{
 u8 *prog = *pprog;
 u32 hi = 0;

 if (is64 && (val & (1<<31)))
  hi = (u32)~0;

 emit_ia32_alu_i(is64, 0, op, dst_lo, val, dstk, &prog);
 if (is64)
  emit_ia32_alu_i(is64, 1, op, dst_hi, hi, dstk, &prog);
 else if (!aux->verifier_zext)
  emit_ia32_mov_i(dst_hi, 0, dstk, &prog);

 *pprog = prog;
}
