
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_IN_NBIT ;
 int assert (int) ;
 int nbit_advance (int ,int) ;

__attribute__((used)) static inline void __tl_nbit_fetch_move (int len) {
  assert (nbit_advance (TL_IN_NBIT, len) == len);
}
