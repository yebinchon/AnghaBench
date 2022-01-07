
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Out; } ;


 TYPE_1__* TL_OUT_CONN ;
 int advance_write_ptr (int *,int) ;
 void* get_write_ptr (int *,int) ;

__attribute__((used)) static inline void *__tl_conn_store_get_ptr (int len) {
  void *r = get_write_ptr (&TL_OUT_CONN->Out, len);
  advance_write_ptr (&TL_OUT_CONN->Out, len);
  return r;
}
