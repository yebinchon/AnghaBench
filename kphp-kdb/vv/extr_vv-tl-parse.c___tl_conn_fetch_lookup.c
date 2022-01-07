
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int nb_iterator_t ;
struct TYPE_2__ {int In; } ;


 TYPE_1__* TL_IN_CONN ;
 int assert (int) ;
 int nbit_read_in (int *,void*,int) ;
 int nbit_set (int *,int *) ;

__attribute__((used)) static inline void __tl_conn_fetch_lookup (void *buf, int len) {
  nb_iterator_t R;
  nbit_set (&R, &TL_IN_CONN->In);
  assert (nbit_read_in (&R, buf, len) == len);
}
