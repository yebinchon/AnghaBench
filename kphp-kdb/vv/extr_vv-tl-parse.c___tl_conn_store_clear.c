
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TL_OUT ;
 scalar_t__ TL_OUT_POS ;
 int __tl_conn_store_read_back (scalar_t__) ;

__attribute__((used)) static inline void __tl_conn_store_clear (void) {
  if (TL_OUT) {
    __tl_conn_store_read_back (TL_OUT_POS + 20);
  }
}
