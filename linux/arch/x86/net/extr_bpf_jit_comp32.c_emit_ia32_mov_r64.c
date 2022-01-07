
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bpf_prog_aux {int verifier_zext; } ;


 int dst_hi ;
 int dst_lo ;
 int emit_ia32_mov_i (int ,int ,int,int **) ;
 int emit_ia32_mov_r (int ,int ,int,int,int **) ;
 int src_hi ;
 int src_lo ;

__attribute__((used)) static inline void emit_ia32_mov_r64(const bool is64, const u8 dst[],
         const u8 src[], bool dstk,
         bool sstk, u8 **pprog,
         const struct bpf_prog_aux *aux)
{
 emit_ia32_mov_r(dst_lo, src_lo, dstk, sstk, pprog);
 if (is64)

  emit_ia32_mov_r(dst_hi, src_hi, dstk, sstk, pprog);
 else if (!aux->verifier_zext)

  emit_ia32_mov_i(dst_hi, 0, dstk, pprog);
}
