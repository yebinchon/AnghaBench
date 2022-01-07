
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_BOOL_STAT ;
 int tl_store_int (int) ;

__attribute__((used)) static inline void tl_store_bool_stat (int res) {
  tl_store_int (TL_BOOL_STAT);
  tl_store_int (res > 0);
  tl_store_int (res <= 0);
  tl_store_int (0);
}
