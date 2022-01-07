
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int A0 ;
 int AT ;
 int Create_Dirty_Excl_D ;
 int Create_Dirty_Excl_SD ;
 scalar_t__ R4600_V1_HIT_CACHEOP_WAR ;
 scalar_t__ R4600_V2_HIT_CACHEOP_WAR ;
 int ZERO ;
 int _uasm_i_pref (int **,int ,scalar_t__,int ) ;
 int cache_line_mask () ;
 int cache_line_size ;
 scalar_t__ cpu_has_cache_cdex_p ;
 scalar_t__ cpu_has_cache_cdex_s ;
 scalar_t__ cpu_is_r4600_v1_x () ;
 scalar_t__ cpu_is_r4600_v2_x () ;
 int half_copy_loop_size ;
 scalar_t__ pref_bias_copy_store ;
 int pref_dst_mode ;
 int uasm_i_cache (int **,int ,int,int ) ;
 int uasm_i_lw (int **,int ,int ,int ) ;
 int uasm_i_nop (int **) ;

__attribute__((used)) static inline void build_copy_store_pref(u32 **buf, int off)
{
 if (off & cache_line_mask())
  return;

 if (pref_bias_copy_store) {
  _uasm_i_pref(buf, pref_dst_mode, pref_bias_copy_store + off,
       A0);
 } else if (cache_line_size == (half_copy_loop_size << 1)) {
  if (cpu_has_cache_cdex_s) {
   uasm_i_cache(buf, Create_Dirty_Excl_SD, off, A0);
  } else if (cpu_has_cache_cdex_p) {
   if (R4600_V1_HIT_CACHEOP_WAR && cpu_is_r4600_v1_x()) {
    uasm_i_nop(buf);
    uasm_i_nop(buf);
    uasm_i_nop(buf);
    uasm_i_nop(buf);
   }

   if (R4600_V2_HIT_CACHEOP_WAR && cpu_is_r4600_v2_x())
    uasm_i_lw(buf, ZERO, ZERO, AT);

   uasm_i_cache(buf, Create_Dirty_Excl_D, off, A0);
  }
 }
}
