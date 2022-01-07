
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 int init_cm_done ;
 int pat_get_cache_mode (int,char*) ;
 int pr_info (char*,char*) ;
 int update_cache_mode_entry (int,int) ;

__attribute__((used)) static void __init_cache_modes(u64 pat)
{
 enum page_cache_mode cache;
 char pat_msg[33];
 int i;

 pat_msg[32] = 0;
 for (i = 7; i >= 0; i--) {
  cache = pat_get_cache_mode((pat >> (i * 8)) & 7,
        pat_msg + 4 * i);
  update_cache_mode_entry(i, cache);
 }
 pr_info("x86/PAT: Configuration [0-7]: %s\n", pat_msg);

 init_cm_done = 1;
}
