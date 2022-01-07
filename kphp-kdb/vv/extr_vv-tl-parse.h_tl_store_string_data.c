
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _tl_store_raw_data (char const*,int) ;
 int assert (int) ;
 scalar_t__ tl_store_check (int) ;
 int tl_store_pad () ;

__attribute__((used)) static inline int tl_store_string_data (const char *s, int len) {
  assert (tl_store_check (len) >= 0);
  _tl_store_raw_data (s, len);
  tl_store_pad ();
  return 0;
}
