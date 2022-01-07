
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_BOOL_FALSE ;
 int TL_BOOL_TRUE ;
 int tl_store_int (int ) ;

__attribute__((used)) static inline void tl_store_bool (int res) {
  if (res == 1) {
    tl_store_int (TL_BOOL_TRUE);
  } else {
    tl_store_int (TL_BOOL_FALSE);
  }
}
