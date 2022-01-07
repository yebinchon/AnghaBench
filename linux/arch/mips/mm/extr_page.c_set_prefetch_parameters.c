
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int processor_id; } ;
 int Pref_Load ;
 int Pref_LoadStreamed ;
 int Pref_PrepareForStore ;
 int Pref_Store ;
 int Pref_StoreStreamed ;
 int cache_line_size ;
 int clear_word_size ;
 int copy_word_size ;
 int cpu_dcache_line_size () ;
 scalar_t__ cpu_has_64bit_gp_regs ;
 scalar_t__ cpu_has_64bit_zero_reg ;
 scalar_t__ cpu_has_cache_cdex_p ;
 scalar_t__ cpu_has_cache_cdex_s ;
 int cpu_has_mips_r6 ;
 scalar_t__ cpu_has_prefetch ;
 int cpu_scache_line_size () ;
 TYPE_1__ current_cpu_data ;
 int const current_cpu_type () ;
 void* half_clear_loop_size ;
 void* half_copy_loop_size ;
 int max (int,int) ;
 void* min (int,int ) ;
 int pref_bias_clear_store ;
 int pref_bias_copy_load ;
 int pref_bias_copy_store ;
 int pref_dst_mode ;
 int pref_src_mode ;

__attribute__((used)) static void set_prefetch_parameters(void)
{
 if (cpu_has_64bit_gp_regs || cpu_has_64bit_zero_reg)
  clear_word_size = 8;
 else
  clear_word_size = 4;

 if (cpu_has_64bit_gp_regs)
  copy_word_size = 8;
 else
  copy_word_size = 4;
 if (cpu_has_prefetch) {




  cache_line_size = cpu_dcache_line_size();
  switch (current_cpu_type()) {
  case 131:
  case 128:

   pref_bias_copy_load = 256;
   break;

  case 135:
  case 134:
  case 133:
  case 132:




   pref_bias_clear_store = 512;
   pref_bias_copy_load = 256;
   pref_bias_copy_store = 256;
   pref_src_mode = Pref_LoadStreamed;
   pref_dst_mode = Pref_StoreStreamed;
   break;

  case 130:
  case 129:
   pref_bias_clear_store = 128;
   pref_bias_copy_load = 128;
   pref_bias_copy_store = 128;




   if (current_cpu_type() == 130 &&
       (current_cpu_data.processor_id & 0xff) < 0x02) {
    pref_src_mode = Pref_Load;
    pref_dst_mode = Pref_Store;
   } else {
    pref_src_mode = Pref_LoadStreamed;
    pref_dst_mode = Pref_StoreStreamed;
   }
   break;

  case 136:

   pref_bias_clear_store = 128;
   pref_bias_copy_load = 128;
   pref_bias_copy_store = 128;
   pref_src_mode = Pref_Load;
   pref_dst_mode = Pref_Store;
   break;

  default:
   pref_bias_clear_store = 128;
   pref_bias_copy_load = 256;
   pref_bias_copy_store = 128;
   pref_src_mode = Pref_LoadStreamed;
   if (cpu_has_mips_r6)





    pref_dst_mode = Pref_StoreStreamed;
   else
    pref_dst_mode = Pref_PrepareForStore;
   break;
  }
 } else {
  if (cpu_has_cache_cdex_s)
   cache_line_size = cpu_scache_line_size();
  else if (cpu_has_cache_cdex_p)
   cache_line_size = cpu_dcache_line_size();
 }




 half_clear_loop_size = min(16 * clear_word_size,
       max(cache_line_size >> 1,
           4 * clear_word_size));
 half_copy_loop_size = min(16 * copy_word_size,
      max(cache_line_size >> 1,
          4 * copy_word_size));
}
