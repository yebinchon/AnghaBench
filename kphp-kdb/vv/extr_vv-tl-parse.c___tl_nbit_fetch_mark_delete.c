
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nb_iterator_t ;


 scalar_t__ TL_IN_MARK ;
 int assert (scalar_t__) ;
 int zfree (scalar_t__,int) ;

__attribute__((used)) static inline void __tl_nbit_fetch_mark_delete (void) {
  assert (TL_IN_MARK);
  zfree (TL_IN_MARK, sizeof (nb_iterator_t));
  TL_IN_MARK = 0;
}
