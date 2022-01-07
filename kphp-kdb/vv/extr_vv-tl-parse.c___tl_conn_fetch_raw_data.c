
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int In; } ;


 TYPE_1__* TL_IN_CONN ;
 int assert (int) ;
 int read_in (int *,void*,int) ;

__attribute__((used)) static inline void __tl_conn_fetch_raw_data (void *buf, int len) {
  assert (read_in (&TL_IN_CONN->In, buf, len) == len);
}
