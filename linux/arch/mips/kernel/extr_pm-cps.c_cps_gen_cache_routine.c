
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;
struct cache_desc {unsigned int ways; unsigned int waybit; int flags; unsigned int const linesz; } ;


 scalar_t__ CKSEG0 ;
 int MIPS_CACHE_NOT_PRESENT ;
 int UASM_i_LA (int **,int ,long) ;
 scalar_t__ cpu_has_mips_r6 ;
 int t0 ;
 int t1 ;
 int uasm_build_label (struct uasm_label**,int *,int) ;
 int uasm_i_addiu (int **,int ,int ,unsigned int const) ;
 int uasm_i_cache (int **,unsigned int,unsigned int,int ) ;
 int uasm_i_nop (int **) ;
 int uasm_il_bne (int **,struct uasm_reloc**,int ,int ,int) ;

__attribute__((used)) static void cps_gen_cache_routine(u32 **pp, struct uasm_label **pl,
      struct uasm_reloc **pr,
      const struct cache_desc *cache,
      unsigned op, int lbl)
{
 unsigned cache_size = cache->ways << cache->waybit;
 unsigned i;
 const unsigned unroll_lines = 32;


 if (cache->flags & MIPS_CACHE_NOT_PRESENT)
  return;


 UASM_i_LA(pp, t0, (long)CKSEG0);


 if (cache_size < 0x8000)
  uasm_i_addiu(pp, t1, t0, cache_size);
 else
  UASM_i_LA(pp, t1, (long)(CKSEG0 + cache_size));


 uasm_build_label(pl, *pp, lbl);


 for (i = 0; i < unroll_lines; i++) {
  if (cpu_has_mips_r6) {
   uasm_i_cache(pp, op, 0, t0);
   uasm_i_addiu(pp, t0, t0, cache->linesz);
  } else {
   uasm_i_cache(pp, op, i * cache->linesz, t0);
  }
 }

 if (!cpu_has_mips_r6)

  uasm_i_addiu(pp, t0, t0, unroll_lines * cache->linesz);


 uasm_il_bne(pp, pr, t0, t1, lbl);
 uasm_i_nop(pp);
}
