
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tl_store_string_data (char const*,int) ;
 int tl_store_string_len (int) ;

__attribute__((used)) static inline int tl_store_string (const char *s, int len) {
  tl_store_string_len (len);
  tl_store_string_data (s, len);
  return 0;
}
