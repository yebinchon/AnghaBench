
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int dst_hi ;
 int dst_lo ;
 int emit_ia32_mov_i (int ,int const,int,int **) ;

__attribute__((used)) static inline void emit_ia32_mov_i64(const bool is64, const u8 dst[],
         const u32 val, bool dstk, u8 **pprog)
{
 u32 hi = 0;

 if (is64 && (val & (1<<31)))
  hi = (u32)~0;
 emit_ia32_mov_i(dst_lo, val, dstk, pprog);
 emit_ia32_mov_i(dst_hi, hi, dstk, pprog);
}
