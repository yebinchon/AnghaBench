
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nb_iterator_t ;


 int * TL_IN_MARK ;
 int TL_IN_MARK_POS ;
 int * TL_IN_NBIT ;
 int TL_IN_POS ;
 int assert (int) ;
 int * zmalloc (int) ;

__attribute__((used)) static inline void __tl_nbit_fetch_mark (void) {
  assert (!TL_IN_MARK);
  nb_iterator_t *T = zmalloc (sizeof (*T));
  *T = *TL_IN_NBIT;
  TL_IN_MARK = T;
  TL_IN_MARK_POS = TL_IN_POS;
}
