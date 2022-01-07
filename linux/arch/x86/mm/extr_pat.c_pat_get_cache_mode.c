
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 int CM (int ) ;






 int UC ;
 int UC_MINUS ;
 int WB ;
 int WC ;
 int WP ;
 int WT ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static enum page_cache_mode pat_get_cache_mode(unsigned pat_val, char *msg)
{
 enum page_cache_mode cache;
 char *cache_mode;

 switch (pat_val) {
 case 133: cache = CM(UC); cache_mode = "UC  "; break;
 case 130: cache = CM(WC); cache_mode = "WC  "; break;
 case 128: cache = CM(WT); cache_mode = "WT  "; break;
 case 129: cache = CM(WP); cache_mode = "WP  "; break;
 case 131: cache = CM(WB); cache_mode = "WB  "; break;
 case 132: cache = CM(UC_MINUS); cache_mode = "UC- "; break;
 default: cache = CM(WB); cache_mode = "WB  "; break;
 }

 memcpy(msg, cache_mode, 4);

 return cache;
}
