
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int nb_iterator_t ;
struct TYPE_2__ {int In; } ;


 int MSG_STD_BUFFER ;
 TYPE_1__* TL_IN_CONN ;
 int TL_OUT_RAW_MSG ;
 int assert (int) ;
 int nbit_clear (int *) ;
 int nbit_read_in (int *,void*,int) ;
 int nbit_set (int *,int *) ;
 int read_in (int *,void*,int) ;
 void* rwm_postpone_alloc (int ,int) ;

__attribute__((used)) static inline void __tl_conn_raw_msg_copy_through (int len, int advance) {
  if (advance) {
    while (len) {
      int x = len >= MSG_STD_BUFFER ? MSG_STD_BUFFER : len;
      void *buf = rwm_postpone_alloc (TL_OUT_RAW_MSG, x);
      assert (buf);
      assert (read_in (&TL_IN_CONN->In, buf, x) == x);
      len -= x;
    }
  } else {
    nb_iterator_t R;
    nbit_set (&R, &TL_IN_CONN->In);
    while (len) {
      int x = len >= MSG_STD_BUFFER ? MSG_STD_BUFFER : len;
      void *buf = rwm_postpone_alloc (TL_OUT_RAW_MSG, x);
      assert (buf);
      assert (nbit_read_in (&R, buf, x) == x);
      len -= x;
    }
    nbit_clear (&R);
  }
}
