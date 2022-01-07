
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int hashcat_ctx_t ;
 int main_backend_device_init_post (int *,void const*,size_t const) ;
 int main_backend_device_init_pre (int *,void const*,size_t const) ;
 int main_backend_session_hostmem (int *,void const*,size_t const) ;
 int main_backend_session_post (int *,void const*,size_t const) ;
 int main_backend_session_pre (int *,void const*,size_t const) ;
 int main_bitmap_final_overflow (int *,void const*,size_t const) ;
 int main_bitmap_init_post (int *,void const*,size_t const) ;
 int main_bitmap_init_pre (int *,void const*,size_t const) ;
 int main_calculated_words_base (int *,void const*,size_t const) ;
 int main_cracker_finished (int *,void const*,size_t const) ;
 int main_cracker_hash_cracked (int *,void const*,size_t const) ;
 int main_cracker_starting (int *,void const*,size_t const) ;
 int main_hashlist_count_lines_post (int *,void const*,size_t const) ;
 int main_hashlist_count_lines_pre (int *,void const*,size_t const) ;
 int main_hashlist_parse_hash (int *,void const*,size_t const) ;
 int main_hashlist_sort_hash_post (int *,void const*,size_t const) ;
 int main_hashlist_sort_hash_pre (int *,void const*,size_t const) ;
 int main_hashlist_sort_salt_post (int *,void const*,size_t const) ;
 int main_hashlist_sort_salt_pre (int *,void const*,size_t const) ;
 int main_hashlist_unique_hash_post (int *,void const*,size_t const) ;
 int main_hashlist_unique_hash_pre (int *,void const*,size_t const) ;
 int main_log_advice (int *,void const*,size_t const) ;
 int main_log_error (int *,void const*,size_t const) ;
 int main_log_info (int *,void const*,size_t const) ;
 int main_log_warning (int *,void const*,size_t const) ;
 int main_monitor_noinput_abort (int *,void const*,size_t const) ;
 int main_monitor_noinput_hint (int *,void const*,size_t const) ;
 int main_monitor_performance_hint (int *,void const*,size_t const) ;
 int main_monitor_runtime_limit (int *,void const*,size_t const) ;
 int main_monitor_status_refresh (int *,void const*,size_t const) ;
 int main_monitor_temp_abort (int *,void const*,size_t const) ;
 int main_monitor_throttle1 (int *,void const*,size_t const) ;
 int main_monitor_throttle2 (int *,void const*,size_t const) ;
 int main_monitor_throttle3 (int *,void const*,size_t const) ;
 int main_outerloop_finished (int *,void const*,size_t const) ;
 int main_outerloop_mainscreen (int *,void const*,size_t const) ;
 int main_outerloop_starting (int *,void const*,size_t const) ;
 int main_potfile_all_cracked (int *,void const*,size_t const) ;
 int main_potfile_hash_left (int *,void const*,size_t const) ;
 int main_potfile_hash_show (int *,void const*,size_t const) ;
 int main_potfile_num_cracked (int *,void const*,size_t const) ;
 int main_potfile_remove_parse_post (int *,void const*,size_t const) ;
 int main_potfile_remove_parse_pre (int *,void const*,size_t const) ;
 int main_set_kernel_power_final (int *,void const*,size_t const) ;
 int main_wordlist_cache_generate (int *,void const*,size_t const) ;
 int main_wordlist_cache_hit (int *,void const*,size_t const) ;

__attribute__((used)) static void event (const u32 id, hashcat_ctx_t *hashcat_ctx, const void *buf, const size_t len)
{
  switch (id)
  {
    case 167: main_bitmap_init_post (hashcat_ctx, buf, len); break;
    case 166: main_bitmap_init_pre (hashcat_ctx, buf, len); break;
    case 168: main_bitmap_final_overflow (hashcat_ctx, buf, len); break;
    case 165: main_calculated_words_base (hashcat_ctx, buf, len); break;
    case 164: main_cracker_finished (hashcat_ctx, buf, len); break;
    case 163: main_cracker_hash_cracked (hashcat_ctx, buf, len); break;
    case 162: main_cracker_starting (hashcat_ctx, buf, len); break;
    case 161: main_hashlist_count_lines_post (hashcat_ctx, buf, len); break;
    case 160: main_hashlist_count_lines_pre (hashcat_ctx, buf, len); break;
    case 159: main_hashlist_parse_hash (hashcat_ctx, buf, len); break;
    case 158: main_hashlist_sort_hash_post (hashcat_ctx, buf, len); break;
    case 157: main_hashlist_sort_hash_pre (hashcat_ctx, buf, len); break;
    case 156: main_hashlist_sort_salt_post (hashcat_ctx, buf, len); break;
    case 155: main_hashlist_sort_salt_pre (hashcat_ctx, buf, len); break;
    case 154: main_hashlist_unique_hash_post (hashcat_ctx, buf, len); break;
    case 153: main_hashlist_unique_hash_pre (hashcat_ctx, buf, len); break;
    case 151: main_log_error (hashcat_ctx, buf, len); break;
    case 150: main_log_info (hashcat_ctx, buf, len); break;
    case 149: main_log_warning (hashcat_ctx, buf, len); break;
    case 152: main_log_advice (hashcat_ctx, buf, len); break;
    case 145: main_monitor_runtime_limit (hashcat_ctx, buf, len); break;
    case 144: main_monitor_status_refresh (hashcat_ctx, buf, len); break;
    case 143: main_monitor_temp_abort (hashcat_ctx, buf, len); break;
    case 142: main_monitor_throttle1 (hashcat_ctx, buf, len); break;
    case 141: main_monitor_throttle2 (hashcat_ctx, buf, len); break;
    case 140: main_monitor_throttle3 (hashcat_ctx, buf, len); break;
    case 146: main_monitor_performance_hint (hashcat_ctx, buf, len); break;
    case 147: main_monitor_noinput_hint (hashcat_ctx, buf, len); break;
    case 148: main_monitor_noinput_abort (hashcat_ctx, buf, len); break;
    case 170: main_backend_session_post (hashcat_ctx, buf, len); break;
    case 169: main_backend_session_pre (hashcat_ctx, buf, len); break;
    case 171: main_backend_session_hostmem (hashcat_ctx, buf, len); break;
    case 173: main_backend_device_init_post (hashcat_ctx, buf, len); break;
    case 172: main_backend_device_init_pre (hashcat_ctx, buf, len); break;
    case 139: main_outerloop_finished (hashcat_ctx, buf, len); break;
    case 138: main_outerloop_mainscreen (hashcat_ctx, buf, len); break;
    case 137: main_outerloop_starting (hashcat_ctx, buf, len); break;
    case 136: main_potfile_all_cracked (hashcat_ctx, buf, len); break;
    case 135: main_potfile_hash_left (hashcat_ctx, buf, len); break;
    case 134: main_potfile_hash_show (hashcat_ctx, buf, len); break;
    case 133: main_potfile_num_cracked (hashcat_ctx, buf, len); break;
    case 132: main_potfile_remove_parse_post (hashcat_ctx, buf, len); break;
    case 131: main_potfile_remove_parse_pre (hashcat_ctx, buf, len); break;
    case 130: main_set_kernel_power_final (hashcat_ctx, buf, len); break;
    case 129: main_wordlist_cache_generate (hashcat_ctx, buf, len); break;
    case 128: main_wordlist_cache_hit (hashcat_ctx, buf, len); break;
  }
}
